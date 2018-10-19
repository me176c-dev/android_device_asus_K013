#define LOG_TAG "power"

#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>
#include <hardware/power.h>
#include <cutils/log.h>

enum {
    PROFILE_POWER_SAVE = 0,
    PROFILE_BALANCED,
    PROFILE_HIGH_PERFORMANCE,
    PROFILE_BIAS_POWER_SAVE,
    PROFILE_BIAS_PERFORMANCE,
    PROFILE_COUNT
};

#define CPU_COUNT  4

#define INTEL_PSTATE_GOVERNOR_CONTROL  "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_governor"
#define INTEL_PSTATE_GOVERNOR_POWER_SAVE   "powersave"
#define INTEL_PSTATE_GOVERNOR_PERFORMANCE  "performance"

#define INTEL_PSTATE_MAX_PERF_CONTROL  "/sys/devices/system/cpu/intel_pstate/max_perf_pct"
#define MAX_PERF_DEFAULT          "100"
#define MAX_PERF_POWER_SAVE       "75"
#define MAX_PERF_BIAS_POWER_SAVE  "90"

#define INTEL_PSTATE_TURBO_CONTROL  "/sys/devices/system/cpu/intel_pstate/no_turbo"
#define TURBO_ON   "0"
#define TURBO_OFF  "1"

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
        ALOGE("Failed to open %s: %s", path, strerror(errno));
        return;
    }

    count = write(fd, text, strlen(text));
    if (count < 0) {
        ALOGE("Failed to write to %s: %s", path, strerror(errno));
    }
    close(fd);
}

static void intel_pstate_set_governor(const char *governor) {
    char path[sizeof(INTEL_PSTATE_GOVERNOR_CONTROL)];

    int i;
    for (i = 0; i < CPU_COUNT; ++i) {
        sprintf(path, INTEL_PSTATE_GOVERNOR_CONTROL, i);
        sysfs_write(path, governor);
    }
}

static void power_init(struct power_module *module) {
    module;
}

static void power_set_interactive(struct power_module *module, int on) {
    module;

    update_touchscreen_state(on);
    update_battery_state(on);
}

#if 0
static void power_set_profile(int profile) {
    switch (profile) {
    case PROFILE_POWER_SAVE:
        intel_pstate_set_governor(INTEL_PSTATE_GOVERNOR_POWER_SAVE);
        sysfs_write(INTEL_PSTATE_MAX_PERF_CONTROL, MAX_PERF_POWER_SAVE);
        sysfs_write(INTEL_PSTATE_TURBO_CONTROL, TURBO_OFF);
        break;
    case PROFILE_BALANCED:
        intel_pstate_set_governor(INTEL_PSTATE_GOVERNOR_POWER_SAVE);
        sysfs_write(INTEL_PSTATE_MAX_PERF_CONTROL, MAX_PERF_DEFAULT);
        sysfs_write(INTEL_PSTATE_TURBO_CONTROL, TURBO_OFF);
        break;
    case PROFILE_HIGH_PERFORMANCE:
        intel_pstate_set_governor(INTEL_PSTATE_GOVERNOR_PERFORMANCE);
        sysfs_write(INTEL_PSTATE_MAX_PERF_CONTROL, MAX_PERF_DEFAULT);
        sysfs_write(INTEL_PSTATE_TURBO_CONTROL, TURBO_ON);
        break;
    case PROFILE_BIAS_POWER_SAVE:
        intel_pstate_set_governor(INTEL_PSTATE_GOVERNOR_POWER_SAVE);
        sysfs_write(INTEL_PSTATE_MAX_PERF_CONTROL, MAX_PERF_BIAS_POWER_SAVE);
        sysfs_write(INTEL_PSTATE_TURBO_CONTROL, TURBO_OFF);
        break;
    case PROFILE_BIAS_PERFORMANCE:
        intel_pstate_set_governor(INTEL_PSTATE_GOVERNOR_POWER_SAVE);
        sysfs_write(INTEL_PSTATE_MAX_PERF_CONTROL, MAX_PERF_DEFAULT);
        sysfs_write(INTEL_PSTATE_TURBO_CONTROL, TURBO_ON);
        break;
    default:
        ALOGE("Invalid performance profile: %d", profile);
    }
}
#endif

static void power_hint(struct power_module *module, power_hint_t hint, void *data) {
    module;
    switch (hint) {
#if 0
    case POWER_HINT_SET_PROFILE:
        power_set_profile(*(int*) data);
        break;
#endif
    case POWER_HINT_DISABLE_TOUCH:
        update_touchscreen_state(!data);
        break;
    default:
        break;
    }
}

#if 0
static int power_get_feature(struct power_module *module, feature_t feature) {
    module;
    switch (feature) {
    case POWER_FEATURE_SUPPORTED_PROFILES:
        return PROFILE_COUNT;
    default:
        return -1;
    }
}
#endif

static struct hw_module_methods_t power_module_methods = {
    .open = NULL,
};

struct power_module HAL_MODULE_INFO_SYM = {
    .common = {
        .tag = HARDWARE_MODULE_TAG,
        .module_api_version = POWER_MODULE_API_VERSION_0_3,
        .hal_api_version = HARDWARE_HAL_API_VERSION,
        .id = POWER_HARDWARE_MODULE_ID,
        .name = "ME176C Power",
        .author = "lambdadroid",
        .methods = &power_module_methods,
    },

    .init = power_init,
    .setInteractive = power_set_interactive,
    .powerHint = power_hint,
#if 0
    .getFeature = power_get_feature,
#endif
};
