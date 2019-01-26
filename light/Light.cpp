#define LOG_TAG "android.hardware.light@2.0-service.me176c"

#include <android-base/logging.h>
#include "Light.h"

namespace android {
namespace hardware {
namespace light {
namespace V2_0 {
namespace implementation {

namespace {
constexpr auto BRIGHTNESS_PATH = "/sys/class/backlight/intel_backlight/brightness";

constexpr uint32_t getBrightness(const uint32_t color) {
    // Based on specification in LightState.color
    return ((77*((color>>16)&0x00ff)) + (150*((color>>8)&0x00ff)) + (29*(color&0x00ff))) >> 8;
}
}

sp<Light> Light::create() {
    std::ofstream brightness{BRIGHTNESS_PATH};
    if (!brightness) {
        PLOG(ERROR) << "Failed to open brightness control (" << BRIGHTNESS_PATH << ")";
        return {};
    }
    return new Light{std::move(brightness)};
}

Light::Light(std::ofstream&& brightness) : mBrightness(std::move(brightness)) {}

// Methods from ::android::hardware::light::V2_0::ILight follow.
Return<Status> Light::setLight(Type type, const LightState& state) {
    if (type != Type::BACKLIGHT) {
        return Status::LIGHT_NOT_SUPPORTED;
    }

    auto brightness = getBrightness(state.color);
    LOG(VERBOSE) << "Setting brightness: " << brightness;
    mBrightness << brightness << std::endl;
    return Status::SUCCESS;
}

Return<void> Light::getSupportedTypes(getSupportedTypes_cb _hidl_cb) {
    _hidl_cb({Type::BACKLIGHT});
    return Void();
}

}  // namespace implementation
}  // namespace V2_0
}  // namespace light
}  // namespace hardware
}  // namespace android
