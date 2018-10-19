#define LOG_TAG "android.hardware.power@1.0-service-me176c"

#include <android-base/file.h>
#include "Power.h"

namespace android {
namespace hardware {
namespace power {
namespace V1_0 {
namespace implementation {

using android::base::WriteStringToFile;

#define TOUCHSCREEN_POWER_CONTROL_PATH  "/sys/bus/i2c/devices/i2c-GDIX1001:00/power/control"
#define BATTERY_POWER_CONTROL_PATH      "/sys/bus/i2c/devices/i2c-UPIG3105:00/power/control"

#define RUNTIME_PM_ON           "on"
#define RUNTIME_PM_AUTOSUSPEND  "auto"

#define updateRuntimePM(type, disable) \
    if (!WriteStringToFile(disable ? RUNTIME_PM_ON : RUNTIME_PM_AUTOSUSPEND, type##_POWER_CONTROL_PATH))\
        PLOG(ERROR) << "Failed to update " #type " power state"

// Methods from ::android::hardware::power::V1_0::IPower follow.
Return<void> Power::setInteractive(bool interactive) {
    LOG(VERBOSE) << "Set interactive: " << interactive;
    updateRuntimePM(TOUCHSCREEN, interactive);
    updateRuntimePM(BATTERY, interactive);
    return Void();
}

Return<void> Power::powerHint(PowerHint /*hint*/, int32_t /*data*/) {
    return Void();
}

Return<void> Power::setFeature(Feature /*feature*/, bool /*activate*/) {
    return Void();
}

Return<void> Power::getPlatformLowPowerStats(getPlatformLowPowerStats_cb _hidl_cb) {
    _hidl_cb({}, Status::SUCCESS);
    return Void();
}

}  // namespace implementation
}  // namespace V1_0
}  // namespace power
}  // namespace hardware
}  // namespace android
