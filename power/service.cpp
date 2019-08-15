#define LOG_TAG "android.hardware.power@1.1-service.me176c"

#include <android-base/logging.h>
#include <hidl/HidlTransportSupport.h>
#include "Power.h"

using android::sp;

using android::hardware::configureRpcThreadpool;
using android::hardware::joinRpcThreadpool;

using android::hardware::power::V1_1::implementation::Power;

using android::OK;

int main() {
    configureRpcThreadpool(1, true /*callerWillJoin*/);

    sp<Power> power = new Power;
    if (power->IPower::registerAsService() != OK) {
        LOG(FATAL) << "Failed to register Power HAL";
    }
    if (power->ILineagePower::registerAsService() != OK) {
        LOG(FATAL) << "Failed to register LineagePower HAL";
    }

    joinRpcThreadpool();
    return 0;
}
