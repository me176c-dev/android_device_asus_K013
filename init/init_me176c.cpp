#include <fstream>
#include <android-base/logging.h>

// ro.serialno is already set by init, so we need to hack a bit to replace it
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>
#define property_replace(name, value) \
    __system_property_update((prop_info*) __system_property_find(name), value, strlen(value))

#define PHONE_INFO_FILE  "/factory/PhoneInfodisk/PhoneInfo_inf"

// Serial number
#define SERIALNO_PROP  "ro.serialno"
#define SERIALNO_LEN   12

namespace {
void load_serialno(std::ifstream& file) {
    // Read serialno from file
    char serialno[SERIALNO_LEN + 1];
    serialno[SERIALNO_LEN] = 0;
    if (!file.read(serialno, SERIALNO_LEN)) {
        PLOG(ERROR) << "Failed to read serialno";
        return;
    }

    // Replace serialno property
    if (auto ret = property_replace(SERIALNO_PROP, serialno); ret) {
        LOG(ERROR) << "Failed to set " SERIALNO_PROP " property: " << ret;
        return;
    }
}
}

void vendor_load_properties() {
    // Open file
    std::ifstream file{PHONE_INFO_FILE};
    if (!file) {
        PLOG(ERROR) << "Failed to open phone info file (" PHONE_INFO_FILE ")";
        return;
    }

    load_serialno(file);
}
