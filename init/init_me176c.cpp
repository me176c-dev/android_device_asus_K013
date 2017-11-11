#include <fstream>
#include <cerrno>
#include <cstring>

#ifndef REPLACE_PROPERTIES
#include "property_service.h"
#else
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>
#define property_set(name, value) \
    __system_property_update((prop_info*) __system_property_find(name), value, strlen(value))
#endif

#include "log.h"

#define PHONE_INFO  "/factory/PhoneInfodisk/PhoneInfo_inf"

/* Serial number */
#define SERIALNO_PROP  "ro.serialno"
#define SERIALNO_SIZE  12+1

static void load_serialno() {
    // Open file
    std::ifstream file(PHONE_INFO);
    if (!file) {
        ERROR("Failed to open phone info file: %s\n", strerror(errno));
        return;
    }

    // Read serialno from file
    char serialno[SERIALNO_SIZE];
    if (!file.get(serialno, SERIALNO_SIZE)) {
        ERROR("Failed to read serialno from phone info file: %s\n", strerror(errno));
        return;
    }

    // Set serialno property
    int ret = property_set(SERIALNO_PROP, serialno);
    if (ret) {
        ERROR("Failed to set " SERIALNO_PROP " property: %d\n", ret);
    }
}

void vendor_load_properties() {
    load_serialno();
}
