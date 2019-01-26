#define LOG_TAG "android.hardware.light@2.0-service.me176c"

#include <android-base/logging.h>
#include <hidl/HidlTransportSupport.h>
#include "Light.h"

using android::OK;

using android::hardware::configureRpcThreadpool;
using android::hardware::joinRpcThreadpool;

using android::hardware::light::V2_0::implementation::Light;

int main() {
    configureRpcThreadpool(1, true /*callerWillJoin*/);

    auto light = Light::create();
    if (!light) {
        LOG(FATAL) << "Failed to create Light HAL";
    }
    if (light->registerAsService() != OK) {
        LOG(FATAL) << "Failed to register Light HAL";
    }

    joinRpcThreadpool();
    return 0;
}
