#include <stdio.h>
#include <errno.h>
#include <string.h>

#ifdef REPLACE_PROPERTIES
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>
#define property_replace(name, value) \
    __system_property_update((prop_info*) __system_property_find(name), value, strlen(value))
#else
#include "property_service.h"
#define property_replace property_set
#endif

#include "log.h"

#define PHONE_INFO "/factory/PhoneInfodisk/PhoneInfo_inf"

/* Serial number */
#define SERIALNO_PROP "ro.serialno"
#define SERIALNO_SIZE 12+1

static void load_serialno() {
    int ret;
    char serial[SERIALNO_SIZE];

    // Open file
    FILE *file = fopen(PHONE_INFO, "r");
    if (!file) {
        ERROR("Failed to open phone info file: %s\n", strerror(errno));
        return;
    }

    // Read serial from file
    if (!fgets(serial, SERIALNO_SIZE, file)) {
        ERROR("Failed to read serialno from phone info file: %s\n", strerror(errno));
        goto err;
    }

    // Set serial property
    ret = property_replace(SERIALNO_PROP, serial);
    if (ret) {
        ERROR("Failed to set %s property: %d\n", SERIALNO_PROP, ret);
    }

err:
    fclose(file);
}

void vendor_load_properties() {
    load_serialno();
}
