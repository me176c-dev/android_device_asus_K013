#define LOG_TAG "android.hardware.light@2.0-service-me176c"

#include <fstream>
#include "Light.h"

namespace android {
namespace hardware {
namespace light {
namespace V2_0 {
namespace implementation {

#define BRIGHTNESS_PATH  "/sys/class/backlight/intel_backlight/brightness"

static inline uint32_t getBrightness(const uint32_t color) {
    // Based on specification in LightState.color
    return ((77*((color>>16)&0x00ff)) + (150*((color>>8)&0x00ff)) + (29*(color&0x00ff))) >> 8;
}

static Status writeBrightness(const uint32_t brightness) {
    std::ofstream file{BRIGHTNESS_PATH};
    if (file) {
        file << brightness;
        file.close();
        if (file) {
            return Status::SUCCESS;
        } else {
            PLOG(ERROR) << "Failed to update brightness";
        }
    } else {
        PLOG(ERROR) << "Failed to open brightness control";
    }

    return Status::UNKNOWN;
}

// Methods from ::android::hardware::light::V2_0::ILight follow.
Return<Status> Light::setLight(Type type, const LightState& state) {
    if (type != Type::BACKLIGHT) {
        return Status::LIGHT_NOT_SUPPORTED;
    }

    auto brightness = getBrightness(state.color);
    LOG(VERBOSE) << "Setting brightness: " << brightness;
    return writeBrightness(brightness);
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
