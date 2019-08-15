#ifndef ANDROID_HARDWARE_POWER_V1_1_POWER_H
#define ANDROID_HARDWARE_POWER_V1_1_POWER_H

#include <android/hardware/power/1.1/IPower.h>

namespace android {
namespace hardware {
namespace power {
namespace V1_1 {
namespace implementation {

using ::android::hardware::Return;
using ::android::hardware::Void;
using ::android::hardware::power::V1_0::Feature;
using ::android::hardware::power::V1_0::PowerHint;
using ::android::hardware::power::V1_1::IPower;

struct Power : public IPower {
    // Methods from ::android::hardware::power::V1_0::IPower follow.
    Return<void> setInteractive(bool interactive) override;
    Return<void> powerHint(PowerHint hint, int32_t data) override;
    Return<void> setFeature(Feature feature, bool activate) override;
    Return<void> getPlatformLowPowerStats(getPlatformLowPowerStats_cb _hidl_cb) override;

    // Methods from ::android::hardware::power::V1_1::IPower follow.
    Return<void> getSubsystemLowPowerStats(getSubsystemLowPowerStats_cb _hidl_cb) override;
    Return<void> powerHintAsync(PowerHint hint, int32_t data) override;
};

}  // namespace implementation
}  // namespace V1_1
}  // namespace power
}  // namespace hardware
}  // namespace android

#endif  // ANDROID_HARDWARE_POWER_V1_1_POWER_H
