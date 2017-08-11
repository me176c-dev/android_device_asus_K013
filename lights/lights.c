#define LOG_TAG "lights"

#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>
#include <hardware/lights.h>
#include <cutils/log.h>

#define BRIGHTNESS_PATH  "/sys/class/backlight/intel_backlight/brightness"

#define MAX_BRIGHTNESS_INPUT   255
#define MAX_BRIGHTNESS_OUTPUT  100

static unsigned char get_brightness(const struct light_state_t *state) {
    // Based on recommendation in lights.h
    unsigned int color = state->color;
    return ((77*((color>>16)&0x00ff)) + (150*((color>>8)&0x00ff)) + (29*(color&0x00ff))) >> 8;
}

static int set_light(struct light_device_t *dev, const struct light_state_t *state) {
    unsigned char brightness;
    int fd, count;
    char buf[5];
    dev;

    brightness = get_brightness(state);
    if (brightness) {
        // Input brightness is 0-255, however intel_backlight accepts 0-100
        brightness = brightness * MAX_BRIGHTNESS_OUTPUT / MAX_BRIGHTNESS_INPUT;
    }

    fd = open(BRIGHTNESS_PATH, O_WRONLY);
    if (fd < 0) {
        ALOGE("Failed to open %s: %s", BRIGHTNESS_PATH, strerror(errno));
        return -errno;
    }

    count = sprintf(buf, "%d\n", brightness);
    if (count > 0) {
        count = write(fd, buf, count);
    }
    close(fd);

    return count < 0 ? -errno : 0;
}

static int close_lights(struct hw_device_t *dev) {
    free(dev);
    return 0;
}

static int open_lights(const struct hw_module_t *module, char const *id, struct hw_device_t **device) {
    struct light_device_t *dev;

    if (strcmp(id, LIGHT_ID_BACKLIGHT))
        return -EINVAL;

    dev = calloc(1, sizeof(*dev));
    if (!dev)
        return -ENOMEM;

    dev->common.tag = HARDWARE_DEVICE_TAG;
    dev->common.version = LIGHTS_DEVICE_API_VERSION_1_0;
    dev->common.module = (struct hw_module_t*) module;
    dev->common.close = close_lights;
    dev->set_light = set_light;

    *device = (struct hw_device_t*) dev;
    return 0;
}

static struct hw_module_methods_t lights_module_methods = {
    .open = open_lights,
};

struct hw_module_t HAL_MODULE_INFO_SYM = {
    .tag = HARDWARE_MODULE_TAG,
    .module_api_version = HARDWARE_MODULE_API_VERSION(1, 0),
    .hal_api_version = HARDWARE_HAL_API_VERSION,
    .id = LIGHTS_HARDWARE_MODULE_ID,
    .name = "ME176C Lights",
    .author = "lambdadroid",
    .methods = &lights_module_methods,
};
