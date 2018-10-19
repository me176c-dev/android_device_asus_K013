#define LOG_TAG "android.hardware.power@1.0-service-me176c"

#include <hidl/HidlTransportSupport.h>
#include "Power.h"

using android::sp;

using android::hardware::configureRpcThreadpool;
using android::hardware::joinRpcThreadpool;

using android::hardware::power::V1_0::IPower;
using android::hardware::power::V1_0::implementation::Power;

using android::OK;

int main() {
    configureRpcThreadpool(1, true /*callerWillJoin*/);

    sp<IPower> power = new Power;
    if (power->registerAsService() != OK) {
        LOG(FATAL) << "Failed to register Power HAL";
    }

    joinRpcThreadpool();
    return 0;
}
