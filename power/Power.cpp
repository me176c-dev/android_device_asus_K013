#define LOG_TAG "android.hardware.power@1.1-service.me176c"

#include <android-base/logging.h>
#include <android-base/file.h>
#include <android-base/unique_fd.h>
#include "Power.h"

namespace android {
namespace hardware {
namespace power {
namespace V1_1 {
namespace implementation {

using ::android::base::WriteStringToFile;
using ::android::hardware::power::V1_0::Status;
using ::vendor::lineage::power::V1_0::LineagePowerHint;

#define DEVICE_CPU_COUNT  4

#define CPUFREQ_GOVERNOR_CONTROL  "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_governor"
#define CPUFREQ_GOVERNOR_POWER_SAVE   "powersave"
#define CPUFREQ_GOVERNOR_PERFORMANCE  "performance"

#define INTEL_PSTATE_MAX_PERF_CONTROL  "/sys/devices/system/cpu/intel_pstate/max_perf_pct"
#define MAX_PERF_DEFAULT          "100"
#define MAX_PERF_POWER_SAVE       "50"
#define MAX_PERF_BIAS_POWER_SAVE  "75"

#define INTEL_PSTATE_TURBO_CONTROL  "/sys/devices/system/cpu/intel_pstate/no_turbo"
#define TURBO_ON   "0"
#define TURBO_OFF  "1"

#define TOUCHSCREEN_POWER_CONTROL_PATH  "/sys/bus/i2c/devices/i2c-GDIX1001:00/power/control"
#define BATTERY_POWER_CONTROL_PATH      "/sys/bus/i2c/devices/i2c-UPIG3105:00/power/control"

#define RUNTIME_PM_ON           "on"
#define RUNTIME_PM_AUTOSUSPEND  "auto"

namespace {
void writeFile(const char *path, const std::string& content) {
    android::base::unique_fd fd{TEMP_FAILURE_RETRY(open(path, O_WRONLY))};
    if (fd == -1) {
        PLOG(ERROR) << "Failed to open " << path;
    } else if (!WriteStringToFd(content, fd)) {
        PLOG(ERROR) << "Failed to write to " << path;
    }
}

void setCPUFreqGovernor(const std::string& governor) {
    char path[sizeof(CPUFREQ_GOVERNOR_CONTROL)];
    for (int i = 0; i < DEVICE_CPU_COUNT; ++i) {
        sprintf(path, CPUFREQ_GOVERNOR_CONTROL, i);
        writeFile(path, governor);
    }
}
}

#define updateRuntimePM(type, disable) \
    writeFile(type##_POWER_CONTROL_PATH, disable ? RUNTIME_PM_ON : RUNTIME_PM_AUTOSUSPEND)

// Methods from ::android::hardware::power::V1_0::IPower follow.
Return<void> Power::setInteractive(bool interactive) {
    LOG(VERBOSE) << "Set interactive: " << interactive;
    updateRuntimePM(TOUCHSCREEN, interactive);
    updateRuntimePM(BATTERY, interactive);
    return Void();
}

void Power::setProfile(LineagePowerProfile profile) {
    switch (profile) {
    case LineagePowerProfile::POWER_SAVE:
        LOG(INFO) << "Set profile: POWER_SAVE";
        setCPUFreqGovernor(CPUFREQ_GOVERNOR_POWER_SAVE);
        writeFile(INTEL_PSTATE_MAX_PERF_CONTROL, MAX_PERF_POWER_SAVE);
        writeFile(INTEL_PSTATE_TURBO_CONTROL, TURBO_OFF);
        break;
    case LineagePowerProfile::BALANCED:
        LOG(INFO) << "Set profile: BALANCED";
        setCPUFreqGovernor(CPUFREQ_GOVERNOR_POWER_SAVE);
        writeFile(INTEL_PSTATE_MAX_PERF_CONTROL, MAX_PERF_DEFAULT);
        writeFile(INTEL_PSTATE_TURBO_CONTROL, TURBO_OFF);
        break;
    case LineagePowerProfile::HIGH_PERFORMANCE:
        LOG(INFO) << "Set profile: HIGH_PERFORMANCE";
        setCPUFreqGovernor(CPUFREQ_GOVERNOR_PERFORMANCE);
        writeFile(INTEL_PSTATE_MAX_PERF_CONTROL, MAX_PERF_DEFAULT);
        writeFile(INTEL_PSTATE_TURBO_CONTROL, TURBO_ON);
        break;
    case LineagePowerProfile::BIAS_POWER_SAVE:
        LOG(INFO) << "Set profile: BIAS_POWER_SAVE";
        setCPUFreqGovernor(CPUFREQ_GOVERNOR_POWER_SAVE);
        writeFile(INTEL_PSTATE_MAX_PERF_CONTROL, MAX_PERF_BIAS_POWER_SAVE);
        writeFile(INTEL_PSTATE_TURBO_CONTROL, TURBO_OFF);
        break;
    case LineagePowerProfile::BIAS_PERFORMANCE:
        LOG(INFO) << "Set profile: BIAS_PERFORMANCE";
        setCPUFreqGovernor(CPUFREQ_GOVERNOR_POWER_SAVE);
        writeFile(INTEL_PSTATE_MAX_PERF_CONTROL, MAX_PERF_DEFAULT);
        writeFile(INTEL_PSTATE_TURBO_CONTROL, TURBO_ON);
        break;
    default:
        LOG(ERROR) << "Invalid profile: " << static_cast<int>(profile);
    }
}

Return<void> Power::powerHint(PowerHint hint, int32_t data) {
    switch (hint) {
    case static_cast<PowerHint>(LineagePowerHint::SET_PROFILE):
        setProfile(static_cast<LineagePowerProfile>(data));
        break;
    default:
        break;
    }
    return Void();
}

Return<void> Power::setFeature(Feature /*feature*/, bool /*activate*/) {
    return Void();
}

Return<void> Power::getPlatformLowPowerStats(getPlatformLowPowerStats_cb _hidl_cb) {
    _hidl_cb({}, Status::SUCCESS);
    return Void();
}

// Methods from ::android::hardware::power::V1_1::IPower follow.
Return<void> Power::getSubsystemLowPowerStats(getSubsystemLowPowerStats_cb _hidl_cb) {
    _hidl_cb({}, Status::SUCCESS);
    return Void();
}

Return<void> Power::powerHintAsync(PowerHint hint, int32_t data) {
    return powerHint(hint, data);
}

// Methods from ::vendor::lineage::power::V1_0::ILineagePower follow
Return<int32_t> Power::getFeature(LineageFeature feature) {
    switch (feature) {
    case LineageFeature::SUPPORTED_PROFILES:
        return static_cast<int32_t>(LineagePowerProfile::COUNT);
    default:
        return -1;
    }
}

}  // namespace implementation
}  // namespace V1_1
}  // namespace power
}  // namespace hardware
}  // namespace android
