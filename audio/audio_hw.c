/*
 * Copyright (C) 2012 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define LOG_TAG "audio_hw_me176c"

#include <stdlib.h>
#include <pthread.h>
#include <cutils/str_parms.h>
#include <hardware/audio.h>
#include <tinyalsa/asoundlib.h>
#include <audio_route/audio_route.h>
#include <log/log.h>

#define PCM_CARD  0
#define MIXER_PATHS  "/vendor/etc/mixer_paths.xml"

#define MIXER_SPEAKER_PATH       "speaker"
#define MIXER_HEADPHONES_PATH    "headphones"
#define MIXER_INTERNAL_MIC_PATH  "internal-mic"
#define MIXER_HEADSET_MIC_PATH   "headset-mic"

#define PRIMARY_DEVICE  0

#define OUT_CHANNEL_COUNT  2
#define OUT_SAMPLE_RATE    48000
#define OUT_PERIOD_SIZE    240
#define OUT_PERIOD_COUNT   2

#define DEEP_BUFFER_DEVICE  1
#define OUT_DEEP_BUFFER_PERIOD_SIZE   2400
#define OUT_DEEP_BUFFER_PERIOD_COUNT  4

#define IN_SAMPLE_RATE   48000
#define IN_PERIOD_SIZE   960
#define IN_PERIOD_COUNT  2

struct audio_component {
    const char *name;

    pthread_mutex_t lock;
    struct pcm *pcm;
    audio_devices_t routing;
};

struct audio_device {
    struct audio_hw_device device;

    pthread_mutex_t lock;
    struct audio_route *route;

    struct audio_component output;
    struct audio_component input;

    bool mic_mute;
};

struct stream_config {
    const char *name;
    unsigned int device;
    struct pcm_config pcm_config;
};

struct stream_common {
    struct audio_device *dev;
    struct audio_component *component;
    struct stream_config *config;
};

struct stream_out {
    struct audio_stream_out stream;
    struct stream_common common;
};

struct stream_in {
    struct audio_stream_in stream;
    struct stream_common common;
    audio_channel_mask_t channel_mask;
};

struct stream_config config_out = {
    .name = "primary",
    .device = PRIMARY_DEVICE,
    .pcm_config = {
        .channels = OUT_CHANNEL_COUNT,
        .rate = OUT_SAMPLE_RATE,
        .period_size = OUT_PERIOD_SIZE,
        .period_count = OUT_PERIOD_COUNT,
        .format = PCM_FORMAT_S16_LE,
        .start_threshold = OUT_PERIOD_SIZE * OUT_PERIOD_COUNT,
    },
};

struct stream_config config_out_deep_buffer = {
    .name = "deep_buffer",
    .device = DEEP_BUFFER_DEVICE,
    .pcm_config = {
        .channels = OUT_CHANNEL_COUNT,
        .rate = OUT_SAMPLE_RATE,
        .period_size = OUT_DEEP_BUFFER_PERIOD_SIZE,
        .period_count = OUT_DEEP_BUFFER_PERIOD_COUNT,
        .format = PCM_FORMAT_S16_LE,
        .start_threshold = OUT_DEEP_BUFFER_PERIOD_SIZE * OUT_DEEP_BUFFER_PERIOD_COUNT,
    },
};

struct stream_config config_in = {
    .name = "primary",
    .device = PRIMARY_DEVICE,
    .pcm_config = {
        .rate = IN_SAMPLE_RATE,
        .period_size = IN_PERIOD_SIZE,
        .period_count = IN_PERIOD_COUNT,
        .format = PCM_FORMAT_S16_LE,
        .start_threshold = IN_PERIOD_SIZE * IN_PERIOD_COUNT,
    },
};

/* Must be called with all 3 locks held */
static void update_mixer(struct audio_device *dev)
{
    int ret;

    ALOGD("Updating mixer: Output: 0x%x, Input: 0x%x",
          dev->output.routing, dev->input.routing);

    audio_route_reset(dev->route);

    /* Output devices */
    if (dev->output.routing & AUDIO_DEVICE_OUT_SPEAKER) {
        audio_route_apply_path(dev->route, MIXER_SPEAKER_PATH);
    }

    if (dev->output.routing & (AUDIO_DEVICE_OUT_WIRED_HEADPHONE |
                               AUDIO_DEVICE_OUT_WIRED_HEADSET)) {
        audio_route_apply_path(dev->route, MIXER_HEADPHONES_PATH);
    }

    /* Input devices */
    if (dev->input.routing & AUDIO_DEVICE_IN_BUILTIN_MIC) {
        audio_route_apply_path(dev->route, MIXER_INTERNAL_MIC_PATH);
    }

    if (dev->input.routing & AUDIO_DEVICE_IN_WIRED_HEADSET) {
        audio_route_apply_path(dev->route, MIXER_HEADSET_MIC_PATH);
    }

    ret = audio_route_update_mixer(dev->route);
    ALOGE_IF(ret, "Failed to update mixer: %d", ret);
}

/* Must be called with component lock held */
static int stream_open(struct stream_common *stream, unsigned int flags)
{
    struct audio_component *component = stream->component;
    if (component->pcm) {
        return 0;
    }

    ALOGD("Starting %s %s stream", stream->config->name, component->name);

    component->pcm = pcm_open(PCM_CARD, stream->config->device,
                              flags | PCM_MONOTONIC,
                              &stream->config->pcm_config);
    if (!component->pcm) {
        ALOGE("Failed to open PCM device");
        return -ENODEV;
    }

    if (!pcm_is_ready(component->pcm)) {
        ALOGE("PCM device is not ready: %s",
              pcm_get_error(component->pcm));
        pcm_close(component->pcm);
        component->pcm = NULL;
        return -EIO;
    }

    return 0;
}

/* Must be called with component lock held */
static inline void component_close(struct audio_component *component)
{
    if (component->pcm) {
        pcm_close(component->pcm);
        component->pcm = NULL;
    }
}

static int stream_standby(struct stream_common *stream)
{
    ALOGD("Standby %s %s stream", stream->config->name, stream->component->name);

    pthread_mutex_lock(&stream->component->lock);
    component_close(stream->component);
    pthread_mutex_unlock(&stream->component->lock);

    return 0;
}

static int stream_update_routing(struct stream_common *stream,
                                 const char *kv_pairs)
{
    struct audio_device *dev = stream->dev;
    struct audio_component *component = stream->component;
    struct str_parms *parms;
    audio_devices_t new_routing;

    ALOGD("Set %s parameters: %s", component->name, kv_pairs);
    parms = str_parms_create_str(kv_pairs);

    if (str_parms_get_int(parms, AUDIO_PARAMETER_STREAM_ROUTING,
                          (int*) &new_routing) == 0) {

        pthread_mutex_lock(&dev->lock);
        pthread_mutex_lock(&component->lock);
        if (new_routing != component->routing) {
            /* Close existing stream before we apply routing changes */
            component_close(component);

            ALOGD("Updating %s routing: 0x%x", component->name, new_routing);
            component->routing = new_routing;

            struct audio_component *other =
                &dev->output == component ? &dev->input : &dev->output;
            pthread_mutex_lock(&other->lock);
            update_mixer(dev);
            pthread_mutex_unlock(&other->lock);
        } else {
            ALOGD("%s routing is up-to-date (0x%x)", component->name, new_routing);
        }
        pthread_mutex_unlock(&component->lock);
        pthread_mutex_unlock(&dev->lock);
    }

    str_parms_destroy(parms);
    return 0;
}

static uint32_t out_get_sample_rate(const struct audio_stream *stream)
{
    const struct stream_out *out = (struct stream_out *) stream;
    return out->common.config->pcm_config.rate;
}

static int out_set_sample_rate(struct audio_stream *stream, uint32_t rate)
{
    return -ENOSYS;
}

static size_t out_get_buffer_size(const struct audio_stream *stream)
{
    const struct stream_out *out = (struct stream_out *) stream;
    const struct pcm_config *config = &out->common.config->pcm_config;
    return config->period_size * audio_stream_out_frame_size(&out->stream) * 2;
}

static audio_channel_mask_t out_get_channels(const struct audio_stream *stream)
{
    return AUDIO_CHANNEL_OUT_STEREO;
}

static audio_format_t out_get_format(const struct audio_stream *stream)
{
    return AUDIO_FORMAT_PCM_16_BIT;
}

static int out_set_format(struct audio_stream *stream, audio_format_t format)
{
    return -ENOSYS;
}

static int out_standby(struct audio_stream *stream)
{
    struct stream_out *out = (struct stream_out *) stream;
    return stream_standby(&out->common);
}

static int out_dump(const struct audio_stream *stream, int fd)
{
    return 0;
}

static int out_set_parameters(struct audio_stream *stream, const char *kv_pairs)
{
    struct stream_out *out = (struct stream_out *) stream;
    return stream_update_routing(&out->common, kv_pairs);
}

static char * out_get_parameters(const struct audio_stream *stream,
                                 const char *keys)
{
    return strdup("");
}

static uint32_t out_get_latency(const struct audio_stream_out *stream)
{
    const struct stream_out *out = (struct stream_out *) stream;
    const struct pcm_config *config = &out->common.config->pcm_config;
    return (config->period_size * config->period_count * 1000) / config->rate;
}

static int out_set_volume(struct audio_stream_out *stream,
                          float left, float right)
{
    return -ENOSYS;
}

static ssize_t out_write(struct audio_stream_out *stream, const void* buffer,
                         size_t bytes)
{
    struct stream_out *out = (struct stream_out *) stream;
    int ret;

    pthread_mutex_lock(&out->common.component->lock);
    ret = stream_open(&out->common, PCM_OUT);
    if (ret) {
        goto done;
    }

    ret = pcm_write(out->common.component->pcm, buffer, bytes);
    ALOGE_IF(ret, "Failed to write to PCM device: %s",
             pcm_get_error(out->common.component->pcm));

done:
    pthread_mutex_unlock(&out->common.component->lock);

    return ret ? ret : bytes;
}

static int out_get_render_position(const struct audio_stream_out *stream,
                                   uint32_t *dsp_frames)
{
    *dsp_frames = 0;
    return -EINVAL;
}

static int out_add_audio_effect(const struct audio_stream *stream,
                                effect_handle_t effect)
{
    return 0;
}

static int out_remove_audio_effect(const struct audio_stream *stream,
                                   effect_handle_t effect)
{
    return 0;
}

static int out_get_next_write_timestamp(const struct audio_stream_out *stream,
                                        int64_t *timestamp)
{
    *timestamp = 0;
    return -EINVAL;
}

/** audio_stream_in implementation **/
static uint32_t in_get_sample_rate(const struct audio_stream *stream)
{
    const struct stream_in *in = (struct stream_in *) stream;
    return in->common.config->pcm_config.rate;
}

static int in_set_sample_rate(struct audio_stream *stream, uint32_t rate)
{
    return -ENOSYS;
}

static size_t in_get_buffer_size(const struct audio_stream *stream)
{
    const struct stream_in *in = (struct stream_in *) stream;
    const struct pcm_config *config = &in->common.config->pcm_config;
    return config->period_size * audio_stream_in_frame_size(&in->stream);
}

static audio_channel_mask_t in_get_channels(const struct audio_stream *stream)
{
    const struct stream_in *in = (struct stream_in *) stream;
    return in->channel_mask;
}

static audio_format_t in_get_format(const struct audio_stream *stream)
{
    return AUDIO_FORMAT_PCM_16_BIT;
}

static int in_set_format(struct audio_stream *stream, audio_format_t format)
{
    return -ENOSYS;
}

static int in_standby(struct audio_stream *stream)
{
    struct stream_in *in = (struct stream_in *) stream;
    return stream_standby(&in->common);
}

static int in_dump(const struct audio_stream *stream, int fd)
{
    return 0;
}

static int in_set_parameters(struct audio_stream *stream, const char *kv_pairs)
{
    struct stream_in *in = (struct stream_in *) stream;
    return stream_update_routing(&in->common, kv_pairs);
}

static char * in_get_parameters(const struct audio_stream *stream,
                                const char *keys)
{
    return strdup("");
}

static int in_set_gain(struct audio_stream_in *stream, float gain)
{
    return 0;
}

static ssize_t in_read(struct audio_stream_in *stream, void* buffer,
                       size_t bytes)
{
    struct stream_in *in = (struct stream_in *) stream;
    int ret;

    pthread_mutex_lock(&in->common.component->lock);
    ret = stream_open(&in->common, PCM_IN);
    if (ret) {
        goto done;
    }

    ret = pcm_read(in->common.component->pcm, buffer, bytes);
    ALOGE_IF(ret, "Failed to read from PCM device: %s",
             pcm_get_error(in->common.component->pcm));

    /* Write zeros if microphone is muted */
    if (in->common.dev->mic_mute) {
        memset(buffer, 0, bytes);
    }

done:
    pthread_mutex_unlock(&in->common.component->lock);

    return ret ? ret : bytes;
}

static uint32_t in_get_input_frames_lost(struct audio_stream_in *stream)
{
    return 0;
}

static int in_add_audio_effect(const struct audio_stream *stream,
                               effect_handle_t effect)
{
    return 0;
}

static int in_remove_audio_effect(const struct audio_stream *stream,
                                  effect_handle_t effect)
{
    return 0;
}

static int adev_open_output_stream(struct audio_hw_device *dev,
                                   audio_io_handle_t handle,
                                   audio_devices_t devices,
                                   audio_output_flags_t flags,
                                   struct audio_config *config,
                                   struct audio_stream_out **stream_out,
                                   const char *address)
{
    struct stream_out *out;
    *stream_out = NULL;

    out = calloc(1, sizeof(*out));
    if (!out)
        return -ENOMEM;

    out->stream.common.get_sample_rate = out_get_sample_rate;
    out->stream.common.set_sample_rate = out_set_sample_rate;
    out->stream.common.get_buffer_size = out_get_buffer_size;
    out->stream.common.get_channels = out_get_channels;
    out->stream.common.get_format = out_get_format;
    out->stream.common.set_format = out_set_format;
    out->stream.common.standby = out_standby;
    out->stream.common.dump = out_dump;
    out->stream.common.set_parameters = out_set_parameters;
    out->stream.common.get_parameters = out_get_parameters;
    out->stream.common.add_audio_effect = out_add_audio_effect;
    out->stream.common.remove_audio_effect = out_remove_audio_effect;
    out->stream.get_latency = out_get_latency;
    out->stream.set_volume = out_set_volume;
    out->stream.write = out_write;
    out->stream.get_render_position = out_get_render_position;
    out->stream.get_next_write_timestamp = out_get_next_write_timestamp;

    out->common.dev = (struct audio_device *) dev;
    out->common.component = &out->common.dev->output;

    if (flags & AUDIO_OUTPUT_FLAG_DEEP_BUFFER) {
        out->common.config = &config_out_deep_buffer;
    } else {
        out->common.config = &config_out;
    }

    ALOGD("Opened %s output stream (flags: 0x%x)",
          out->common.config->name, flags);

    *stream_out = &out->stream;
    return 0;
}

static void adev_close_output_stream(struct audio_hw_device *dev,
                                     struct audio_stream_out *stream)
{
    free(stream);
}

static int adev_set_parameters(struct audio_hw_device *dev, const char *kvpairs)
{
    return -ENOSYS;
}

static char * adev_get_parameters(const struct audio_hw_device *dev,
                                  const char *keys)
{
    return strdup("");
}

static int adev_init_check(const struct audio_hw_device *dev)
{
    return 0;
}

static int adev_set_voice_volume(struct audio_hw_device *dev, float volume)
{
    return -ENOSYS;
}

static int adev_set_master_volume(struct audio_hw_device *dev, float volume)
{
    return -ENOSYS;
}

static int adev_get_master_volume(struct audio_hw_device *dev, float *volume)
{
    return -ENOSYS;
}

static int adev_set_master_mute(struct audio_hw_device *dev, bool muted)
{
    return -ENOSYS;
}

static int adev_get_master_mute(struct audio_hw_device *dev, bool *muted)
{
    return -ENOSYS;
}

static int adev_set_mode(struct audio_hw_device *dev, audio_mode_t mode)
{
    return 0;
}

static int adev_set_mic_mute(struct audio_hw_device *dev, bool state)
{
    struct audio_device *adev = (struct audio_device *) dev;
    pthread_mutex_lock(&adev->input.lock);
    adev->mic_mute = state;
    pthread_mutex_unlock(&adev->input.lock);
    return 0;
}

static int adev_get_mic_mute(const struct audio_hw_device *dev, bool *state)
{
    struct audio_device *adev = (struct audio_device *) dev;
    *state = adev->mic_mute;
    return 0;
}

static size_t adev_get_input_buffer_size(const struct audio_hw_device *dev,
                                         const struct audio_config *config)
{
    size_t frames;

    if (config->sample_rate == IN_SAMPLE_RATE) {
        /* No resampling needed */
        frames = IN_PERIOD_SIZE;
    } else {
        /* Resampling needed, this is similar to "destinationFramesPossible"
         * in AudioResamplerPublic.h */
        frames = (IN_PERIOD_SIZE * config->sample_rate) / IN_SAMPLE_RATE;
        if (frames > 2) {
            frames -= 2;
        } else {
            frames = 0;
        }
    }

    return frames * audio_channel_count_from_in_mask(config->channel_mask)
                  * audio_bytes_per_sample(config->format);
}

static int adev_open_input_stream(struct audio_hw_device *dev,
                                  audio_io_handle_t handle,
                                  audio_devices_t devices,
                                  struct audio_config *config,
                                  struct audio_stream_in **stream_in,
                                  audio_input_flags_t flags,
                                  const char *address,
                                  audio_source_t source)
{
    struct stream_in *in;
    *stream_in = NULL;

    in = calloc(1, sizeof(*in));
    if (!in)
        return -ENOMEM;

    in->stream.common.get_sample_rate = in_get_sample_rate;
    in->stream.common.set_sample_rate = in_set_sample_rate;
    in->stream.common.get_buffer_size = in_get_buffer_size;
    in->stream.common.get_channels = in_get_channels;
    in->stream.common.get_format = in_get_format;
    in->stream.common.set_format = in_set_format;
    in->stream.common.standby = in_standby;
    in->stream.common.dump = in_dump;
    in->stream.common.set_parameters = in_set_parameters;
    in->stream.common.get_parameters = in_get_parameters;
    in->stream.common.add_audio_effect = in_add_audio_effect;
    in->stream.common.remove_audio_effect = in_remove_audio_effect;
    in->stream.set_gain = in_set_gain;
    in->stream.read = in_read;
    in->stream.get_input_frames_lost = in_get_input_frames_lost;

    in->common.dev = (struct audio_device *) dev;
    in->common.component = &in->common.dev->input;
    in->common.config = &config_in;

    /* Set channel count */
    in->channel_mask = config->channel_mask;
    in->common.config->pcm_config.channels =
        audio_channel_count_from_in_mask(config->channel_mask);

    ALOGD("Opened input stream (channels: %d)",
          in->common.config->pcm_config.channels);

    *stream_in = &in->stream;
    return 0;
}

static void adev_close_input_stream(struct audio_hw_device *dev,
                                    struct audio_stream_in *stream)
{
    free(stream);
}

static int adev_dump(const audio_hw_device_t *device, int fd)
{
    return 0;
}

static int adev_close(hw_device_t *device)
{
    struct audio_device *adev = (struct audio_device *) device;

    ALOGD("Closing audio device");

    audio_route_free(adev->route);
    free(device);
    return 0;
}

static int adev_open(const hw_module_t* module, const char* name,
                     hw_device_t** device)
{
    struct audio_device *adev;

    ALOGD("Opening audio device: %s", name);

    if (strcmp(name, AUDIO_HARDWARE_INTERFACE))
        return -EINVAL;

    adev = calloc(1, sizeof(*adev));
    if (!adev)
        return -ENOMEM;

    adev->device.common.tag = HARDWARE_DEVICE_TAG;
    adev->device.common.version = AUDIO_DEVICE_API_VERSION_2_0;
    adev->device.common.module = (struct hw_module_t *) module;
    adev->device.common.close = adev_close;

    adev->device.init_check = adev_init_check;
    adev->device.set_voice_volume = adev_set_voice_volume;
    adev->device.set_master_volume = adev_set_master_volume;
    adev->device.get_master_volume = adev_get_master_volume;
    adev->device.set_master_mute = adev_set_master_mute;
    adev->device.get_master_mute = adev_get_master_mute;
    adev->device.set_mode = adev_set_mode;
    adev->device.set_mic_mute = adev_set_mic_mute;
    adev->device.get_mic_mute = adev_get_mic_mute;
    adev->device.set_parameters = adev_set_parameters;
    adev->device.get_parameters = adev_get_parameters;
    adev->device.get_input_buffer_size = adev_get_input_buffer_size;
    adev->device.open_output_stream = adev_open_output_stream;
    adev->device.close_output_stream = adev_close_output_stream;
    adev->device.open_input_stream = adev_open_input_stream;
    adev->device.close_input_stream = adev_close_input_stream;
    adev->device.dump = adev_dump;

    adev->output.name = "output";
    adev->input.name = "input";

    adev->route = audio_route_init(PCM_CARD, MIXER_PATHS);
    if (!adev->route) {
        ALOGE("Failed to initialize audio route");
        free(adev);
        return -ENODEV;
    }

    *device = &adev->device.common;
    return 0;
}

static struct hw_module_methods_t audio_module_methods = {
    .open = adev_open,
};

struct audio_module HAL_MODULE_INFO_SYM = {
    .common = {
        .tag = HARDWARE_MODULE_TAG,
        .module_api_version = AUDIO_MODULE_API_VERSION_0_1,
        .hal_api_version = HARDWARE_HAL_API_VERSION,
        .id = AUDIO_HARDWARE_MODULE_ID,
        .name = "ME176C Audio",
        .author = "lambdadroid",
        .methods = &audio_module_methods,
    },
};
