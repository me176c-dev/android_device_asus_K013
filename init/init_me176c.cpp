#include <fstream>
#include <android-base/logging.h>
#include <property_service.h>

// ro.serialno is already set by init, so we need to hack a bit to replace it
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>
#define property_replace(name, value) \
    __system_property_update((prop_info*) __system_property_find(name), value, strlen(value))

using android::init::property_set;

#define PHONE_INFO_FILE  "/factory/PhoneInfodisk/PhoneInfo_inf"

// Serial number
#define SERIALNO_PROP  "ro.serialno"
#define SERIALNO_LEN   12

// MAC address
#define MAC_ADDR_LEN   17
#define BDADDR_POS     0x99
#define BDADDR_PROP    "ro.boot.btmacaddr"
#define WIFI_MAC_POS   0xcc
#define WIFI_MAC_PROP  "ro.boot.wifimacaddr"

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

void load_mac_addr(std::ifstream& file, std::streampos pos, const std::string& prop, std::string& addr) {
    if (!file.seekg(pos)) {
        PLOG(ERROR) << "Failed to seek to " << prop;
        return;
    }

    for (auto i = 0; i < MAC_ADDR_LEN; i += 3) {
        addr[i] = file.get();
        addr[i+1] = file.get();
    }

    if (!file) {
        PLOG(ERROR) << "Failed to read " << prop;
        return;
    }

    property_set(prop, addr);
}
}

void vendor_load_properties() {
    // Open file
    std::ifstream file{PHONE_INFO_FILE, std::ifstream::binary};
    if (!file) {
        PLOG(ERROR) << "Failed to open phone info file (" PHONE_INFO_FILE ")";
        return;
    }

    load_serialno(file);

    std::string addr(MAC_ADDR_LEN, ':');
    load_mac_addr(file, BDADDR_POS, BDADDR_PROP, addr);
    load_mac_addr(file, WIFI_MAC_POS, WIFI_MAC_PROP, addr);
}
