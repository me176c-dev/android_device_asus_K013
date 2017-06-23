#define LOG_TAG "power"

#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>
#include <hardware/power.h>
#include <cutils/log.h>

#define TOUCHSCREEN_POWER_CONTROL_PATH  "/sys/bus/i2c/devices/i2c-GDIX1001:00/power/control"
#define BATTERY_POWER_CONTROL_PATH      "/sys/bus/i2c/devices/i2c-UPIG3105:00/power/control"

#define RUNTIME_PM_ON           "on"
#define RUNTIME_PM_AUTOSUSPEND  "auto"

#define update_runtime_pm(path, disable) \
    sysfs_write(path, disable ? RUNTIME_PM_ON : RUNTIME_PM_AUTOSUSPEND)
#define update_touchscreen_state(enable) \
    update_runtime_pm(TOUCHSCREEN_POWER_CONTROL_PATH, enable)
#define update_battery_state(enable) \
    update_runtime_pm(BATTERY_POWER_CONTROL_PATH, enable)

static void sysfs_write(const char *path, const char *text) {
    int fd, count;

    fd = open(path, O_WRONLY);
    if (fd < 0) {
        ALOGE("Failed to open %s: %s\n", path, strerror(errno));
        return;
    }

    count = write(fd, text, strlen(text));
    if (count < 0) {
        ALOGE("Failed to write to %s: %s\n", path, strerror(errno));
    }
    close(fd);
}

static void power_init(struct power_module *module) {
    module;
}

static void power_set_interactive(struct power_module *module, int on) {
    module;

    update_touchscreen_state(on);
    update_battery_state(on);
}

static void power_hint(struct power_module *module, power_hint_t hint, void *data) {
    module;
    switch (hint) {
    case POWER_HINT_DISABLE_TOUCH:
        update_touchscreen_state(!data);
        break;
    default:
        break;
    }
}

static struct hw_module_methods_t power_module_methods = {
    .open = NULL,
};

struct power_module HAL_MODULE_INFO_SYM = {
    .common = {
        .tag = HARDWARE_MODULE_TAG,
        .module_api_version = POWER_MODULE_API_VERSION_0_2,
        .hal_api_version = HARDWARE_HAL_API_VERSION,
        .id = POWER_HARDWARE_MODULE_ID,
        .name = "ME176C Power",
        .author = "lambdadroid",
        .methods = &power_module_methods,
    },

    .init = power_init,
    .setInteractive = power_set_interactive,
    .powerHint = power_hint,
};
