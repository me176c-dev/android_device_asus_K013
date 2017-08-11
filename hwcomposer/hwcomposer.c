#define LOG_TAG "hwcomposer"

#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>
#include <xf86drm.h>
#include <xf86drmMode.h>
#include <hardware/hwcomposer.h>
#include <hardware/gralloc.h>
#include <hardware/fb.h>
#include <cutils/log.h>

#define DRM_ACTIVE_PROPERTY "ACTIVE"

// Note: We don't actually implement a real HWComposer here
// The only purpose of this module is to implement setPowerMode for the display

struct hwc_context_t {
    hwc_composer_device_1_t device;

    int fd;
    unsigned int display_crtc;
    unsigned int active_property;

    bool current_state;
};

struct drm_framebuffer_device {
    struct framebuffer_device_t device;
    int fd;
};

static int hwc_find_crtc(struct hwc_context_t *context) {
    int i;
    drmModeResPtr res;
    drmModeCrtcPtr crtc;

    res = drmModeGetResources(context->fd);
    for (i = 0; i < res->count_crtcs; ++i) {
        crtc = drmModeGetCrtc(context->fd, res->crtcs[i]);
        if (!crtc) {
            ALOGE("Failed to lookup CRTC %d: %s", res->crtcs[i], strerror(errno));
            continue;
        }

        if (crtc->mode_valid) {
            if (context->display_crtc) {
                ALOGE("Multiple active CRTCs found: current: %d, new: %d (%dx%d)",
                    context->display_crtc, crtc->crtc_id, crtc->width, crtc->height);
            } else {
                ALOGI("Found display CRTC %d with %dx%d", crtc->crtc_id,
                    crtc->width, crtc->height);
                context->display_crtc = crtc->crtc_id;
            }
        }

        drmModeFreeCrtc(crtc);
    }

    drmModeFreeResources(res);

    if (!context->display_crtc) {
        ALOGE("Display CRTC not found");
        return -ENODEV;
    }

    return 0;
}

static int hwc_find_active_property(struct hwc_context_t *context) {
    unsigned int i;
    drmModeObjectPropertiesPtr properties;
    drmModePropertyPtr property;

    properties = drmModeObjectGetProperties(context->fd, context->display_crtc, DRM_MODE_OBJECT_CRTC);
    if (!properties) {
        ALOGE("Failed to get CRTC properties: %s", strerror(errno));
        return -errno;
    }

    for (i = 0; i < properties->count_props; ++i) {
        property = drmModeGetProperty(context->fd, properties->props[i]);
        if (!property) {
            ALOGE("Failed to lookup property %d: %s", properties->props[i], strerror(errno));
            continue;
        }

        ALOGD("Found property %s (%d)", property->name, property->prop_id);

        if (strcmp(property->name, DRM_ACTIVE_PROPERTY) == 0) {
            context->active_property = property->prop_id;
            ALOGI("Found ACTIVE property: %d", property->prop_id);
            drmModeFreeProperty(property);
            break;
        }

        drmModeFreeProperty(property);
    }

    drmModeFreeObjectProperties(properties);

    if (!context->active_property) {
        ALOGE("Failed to find active property of CRTC %d", context->display_crtc);
        return -1;
    }

    return 0;
}

static int hwc_get_fd_from_framebuffer(void) {
    const struct hw_module_t *module;
    struct drm_framebuffer_device *device;
    int ret;

    ret = hw_get_module(GRALLOC_HARDWARE_MODULE_ID, &module);
    if (ret < 0) {
        ALOGE("%s module not found: %d", GRALLOC_HARDWARE_MODULE_ID, ret);
        return ret;
    }

    ret = framebuffer_open(module, (struct framebuffer_device_t **) &device);
    if (ret < 0) {
        ALOGE("Failed to open framebuffer device: %d", ret);
        return ret;
    }

    return device->fd;
}

static int hwc_init(struct hwc_context_t *context) {
    int ret;

    context->fd = hwc_get_fd_from_framebuffer();
    if (context->fd < 0) {
        ALOGE("Failed to get DRM FD from framebuffer: %d", context->fd);
        return context->fd;
    }

    ALOGI("DRM FD: %d", context->fd);

    // We use the atomic DRM API to disable the display
    ret = drmSetClientCap(context->fd, DRM_CLIENT_CAP_ATOMIC, 1);
    if (ret) {
        ALOGE("Failed to set atomic cap: %d", ret);
        goto end;
    }

    ret = hwc_find_crtc(context);
    if (ret)
        goto end;

    ret = hwc_find_active_property(context);

end:
    if (ret) {
        close(context->fd);
    }

    return ret;
}

static int hwc_change_state(struct hwc_context_t *context, bool active) {
    int ret;
    drmModeAtomicReqPtr pset;

    pset = drmModeAtomicAlloc();
    if (!pset) {
        ALOGE("Failed to allocate property set");
        return -ENOMEM;
    }

    ret = drmModeAtomicAddProperty(pset, context->display_crtc, context->active_property, active);
    if (ret < 0) {
        ALOGE("Failed to set ACTIVE property: %d", ret);
        goto err;
    }

    ret = drmModeAtomicCommit(context->fd, pset, DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);
    if (ret) {
        ALOGE("Failed to commit display state update: %d", ret);
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

    ALOGI("Changing display state: %d", new_state);

    ret = hwc_change_state(context, new_state);
    if (ret) {
        ALOGE("Failed to change display state: %d", ret);
    } else {
        context->current_state = new_state;
    }

    return ret;
}

static int hwc_close(struct hwc_context_t *context) {
    close(context->fd);
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
