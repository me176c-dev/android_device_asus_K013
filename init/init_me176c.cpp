#include <stdio.h>
#include <errno.h>
#include <string.h>

#include "property_service.h"
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
    ret = property_set(SERIALNO_PROP, serial);
    if (ret) {
        ERROR("Failed to set %s property: %d\n", SERIALNO_PROP, ret);
    }

err:
    fclose(file);
}

void vendor_load_properties() {
    load_serialno();
}
