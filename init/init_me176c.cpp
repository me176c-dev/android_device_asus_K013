#include <android-base/logging.h>
#include <property_service.h>
#include <me176c-factory.h>

// ro.serialno is already set by init, so we need to hack a bit to replace it
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>
#define property_replace(name, value) \
    __system_property_update((prop_info*) __system_property_find(name), value, strlen(value))

using android::init::property_set;

#define FACTORY_BLOCK_DEVICE  "/dev/block/internal/by-name/factory"
#define FACTORY_MOUNT_PATH    "/mnt/vendor/factory"

#define SERIALNO_PROP  "ro.serialno"
#define BDADDR_PROP    "ro.boot.btmacaddr"
#define WIFIADDR_PROP  "ro.boot.wifimacaddr"

void vendor_load_properties() {
    struct me176c_factory_info info;
    if (me176c_factory_load(FACTORY_BLOCK_DEVICE, FACTORY_MOUNT_PATH, &info)) {
        PLOG(ERROR) << "Failed to load factory info from " FACTORY_BLOCK_DEVICE;
        return;
    }

    if (int ret = property_replace(SERIALNO_PROP, info.serialno); ret) {
        LOG(ERROR) << "Failed to set " SERIALNO_PROP " property: " << ret;
    }

    property_set(BDADDR_PROP, info.bdaddr);
    property_set(WIFIADDR_PROP, info.wifiaddr);
}
