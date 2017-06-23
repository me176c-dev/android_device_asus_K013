#define LOG_TAG "hwcomposer"

#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>
#include <xf86drm.h>
#include <xf86drmMode.h>
#include <hardware/hwcomposer.h>
#include <cutils/log.h>

#define DRM_DEVICE_PATH "/dev/dri/card0"
#define DRM_ACTIVE_PROPERTY "ACTIVE"

// Note: We don't actually implement a real HWComposer here
// The only purpose of this module is to implement setPowerMode for the display

struct hwc_context_t {
    hwc_composer_device_1_t device;

    int gpu_fd;
    unsigned int display_crtc;
    unsigned int active_property;

    bool current_state;
};

static int hwc_find_crtc(struct hwc_context_t *context) {
    int i;
    drmModeResPtr res;
    drmModeCrtcPtr crtc;

    res = drmModeGetResources(context->gpu_fd);
    for (i = 0; i < res->count_crtcs; ++i) {
        crtc = drmModeGetCrtc(context->gpu_fd, res->crtcs[i]);
        if (!crtc) {
            ALOGE("Failed to lookup CRTC %d: %s\n", res->crtcs[i], strerror(errno));
            continue;
        }

        if (crtc->mode_valid) {
            if (context->display_crtc) {
                ALOGE("Multiple active CRTCs found: current: %d, new: %d (%dx%d)\n",
                    context->display_crtc, crtc->crtc_id, crtc->width, crtc->height);
            } else {
                ALOGI("Found display CRTC %d with %dx%d\n", crtc->crtc_id,
                    crtc->width, crtc->height);
                context->display_crtc = crtc->crtc_id;
            }
        }

        drmModeFreeCrtc(crtc);
    }

    drmModeFreeResources(res);

    if (!context->display_crtc) {
        ALOGE("Display CRTC not found\n");
        return -ENODEV;
    }

    return 0;
}

static int hwc_find_active_property(struct hwc_context_t *context) {
    unsigned int i;
    drmModeObjectPropertiesPtr properties;
    drmModePropertyPtr property;

    properties = drmModeObjectGetProperties(context->gpu_fd, context->display_crtc, DRM_MODE_OBJECT_CRTC);
    if (!properties) {
        ALOGE("Failed to get CRTC properties: %s\n", strerror(errno));
        return -errno;
    }

    for (i = 0; i < properties->count_props; ++i) {
        property = drmModeGetProperty(context->gpu_fd, properties->props[i]);
        if (!property) {
            ALOGE("Failed to lookup property %d: %s\n", properties->props[i], strerror(errno));
            continue;
        }

        ALOGD("Found property %s (%d)\n", property->name, property->prop_id);

        if (strcmp(property->name, DRM_ACTIVE_PROPERTY) == 0) {
            context->active_property = property->prop_id;
            ALOGI("Found ACTIVE property: %d\n", property->prop_id);
            drmModeFreeProperty(property);
            break;
        }

        drmModeFreeProperty(property);
    }

    drmModeFreeObjectProperties(properties);

    if (!context->active_property) {
        ALOGE("Failed to find active property of CRTC %d\n", context->display_crtc);
        return -1;
    }

    return 0;
}

static int hwc_init(struct hwc_context_t *context) {
    int ret;

    context->gpu_fd = open(DRM_DEVICE_PATH, O_RDWR);
    if (context->gpu_fd < 0) {
        ALOGE("Failed to open %s: %s\n", DRM_DEVICE_PATH, strerror(errno));
        return -errno;
    }

    // We use the atomic DRM API to disable the display
    ret = drmSetClientCap(context->gpu_fd, DRM_CLIENT_CAP_ATOMIC, 1);
    if (ret) {
        ALOGE("Failed to set atomic cap: %d\n", ret);
        goto end;
    }

    ret = hwc_find_crtc(context);
    if (ret)
        goto end;

    ret = hwc_find_active_property(context);

end:
    if (ret) {
        close(context->gpu_fd);
    }

    return ret;
}

static int hwc_change_state(struct hwc_context_t *context, bool active) {
    int ret;
    drmModeAtomicReqPtr pset;

    pset = drmModeAtomicAlloc();
    if (!pset) {
        ALOGE("Failed to allocate property set\n");
        return -ENOMEM;
    }

    ret = drmModeAtomicAddProperty(pset, context->display_crtc, context->active_property, active);
    if (ret < 0) {
        ALOGE("Failed to set ACTIVE property: %d\n", ret);
        goto err;
    }

    ret = drmModeAtomicCommit(context->gpu_fd, pset, DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);
    if (ret) {
        ALOGE("Failed to commit display state update: %d\n", ret);
    }

err:
    drmModeAtomicFree(pset);
    return ret;
}

static int hwc_set_power_mode(struct hwc_context_t* context, int disp, int mode) {
    int ret;
    bool new_state = mode;
    disp;

    if (context->current_state == new_state) {
        return 0;
    }

    ALOGI("Changing display state: %d\n", new_state);

    ret = hwc_change_state(context, new_state);
    if (ret) {
        ALOGE("Failed to change display state: %d\n", ret);
    } else {
        context->current_state = new_state;
    }

    return ret;
}

static int hwc_close(struct hwc_context_t *context) {
    close(context->gpu_fd);
    free(context);
    return 0;
}

static int hwc_open(const struct hw_module_t *module, char const *id, struct hw_device_t **device) {
    struct hwc_context_t *dev;
    int ret;

    if (strcmp(id, HWC_HARDWARE_COMPOSER))
        return -EINVAL;

    dev = calloc(1, sizeof(*dev));
    if (!dev)
        return -ENOMEM;

    ret = hwc_init(dev);
    if (ret) {
        free(dev);
        return ret;
    }

    dev->current_state = true;

    dev->device.common.tag = HARDWARE_DEVICE_TAG;
    dev->device.common.version = 0; // We don't actually implement a full HWC
    dev->device.common.module = (struct hw_module_t*) module;
    dev->device.common.close = (int (*)(struct hw_device_t*)) hwc_close;
    dev->device.setPowerMode = (int (*)(struct hwc_composer_device_1 *, int, int)) hwc_set_power_mode;

    *device = (struct hw_device_t*) dev;
    return 0;
}

static struct hw_module_methods_t hwc_module_methods = {
    .open = hwc_open,
};

struct hwc_module HAL_MODULE_INFO_SYM = {
    .common = {
        .tag = HARDWARE_MODULE_TAG,
        .module_api_version = HWC_MODULE_API_VERSION_0_1,
        .hal_api_version = HARDWARE_HAL_API_VERSION,
        .id = HWC_HARDWARE_MODULE_ID,
        .name = "ME176C HWComposer",
        .author = "lambdadroid",
        .methods = &hwc_module_methods,
    }
};
