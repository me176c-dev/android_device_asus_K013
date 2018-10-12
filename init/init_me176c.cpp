#include <fstream>
#include <android-base/logging.h>

// ro.serialno is already set by init, so we need to hack a bit to replace it
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>
#define property_replace(name, value) \
    __system_property_update((prop_info*) __system_property_find(name), value, strlen(value))

#define PHONE_INFO  "/factory/PhoneInfodisk/PhoneInfo_inf"

/* Serial number */
#define SERIALNO_PROP  "ro.serialno"
#define SERIALNO_SIZE  12+1

static void load_serialno() {
    // Open file
    std::ifstream file(PHONE_INFO);
    if (!file) {
        PLOG(ERROR) << "Failed to open phone info file";
        return;
    }

    // Read serialno from file
    char serialno[SERIALNO_SIZE];
    if (!file.get(serialno, SERIALNO_SIZE)) {
        PLOG(ERROR) << "Failed to read serialno from phone info file";
        return;
    }

    // Replace serialno property
    int ret = property_replace(SERIALNO_PROP, serialno);
    if (ret) {
        LOG(ERROR) << "Failed to set " SERIALNO_PROP " property: " << ret;
    }
}

void vendor_load_properties() {
    load_serialno();
}
