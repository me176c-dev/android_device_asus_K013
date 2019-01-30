#define LOG_TAG "bdaddr"

#include <stdint.h>
#include <errno.h>
#include <string.h>
#include <sys/socket.h>
#include <log/log.h>

#define HCI_DEV_NONE  0xffff
#define HCI_CHANNEL_CONTROL  3
#define BTPROTO_HCI  1

struct sockaddr_hci {
    sa_family_t hci_family;
    uint16_t hci_dev;
    uint16_t hci_channel;
};

#define BTMGMT_CMD_READ_CONFIG_INFO  0x0037
#define BTMGMT_CMD_SET_PUBLIC_ADDR  0x0039
#define BTMGMT_EV_CMD_COMPLETE  0x0001
#define BTMGMT_EV_CMD_STATUS  0x0002
#define BTMGMT_EV_UNCONF_INDEX_ADDED  0x001d
#define BTMGMT_OPT_PUBLIC_ADDRESS  (1 << 1)
#define BTMGMT_ERR_INVALID_INDEX  0x11

struct btmgmt_hdr {
    uint16_t cmd;
    uint16_t id;
    uint16_t len;
} __attribute__((packed));

struct btmgmt_cmd_set_public_addr {
    struct btmgmt_hdr hdr;
    uint8_t addr[6];
} __attribute__((packed));

struct btmgmt_ev_cmd_status {
    struct btmgmt_hdr hdr;
    uint16_t cmd;
    uint8_t status;
} __attribute__((packed));

struct btmgmt_ev_cc_config_info {
    struct btmgmt_ev_cmd_status ev;
    uint16_t manufacturer;
    uint32_t supported_options;
    uint32_t missing_options;
} __attribute__((packed));

// TODO: Make this configurable
#define HCI_CONTROLLER  0

#define MAC_ADDRESS_SIZE    6
#define MAC_ADDRESS_LENGTH  (MAC_ADDRESS_SIZE*2 + MAC_ADDRESS_SIZE-1)
#define MAC_ADDRESS_FORMAT  "%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx"
#define MAC_ADDRESS_ARGS(addr) \
    (addr)[5], (addr)[4], (addr)[3], (addr)[2], (addr)[1], (addr)[0]

#define MESSAGE_BUFFER  512

static int btmgmt_connect() {
    int s = socket(PF_BLUETOOTH, SOCK_RAW | SOCK_CLOEXEC, BTPROTO_HCI);
    if (s < 0)
        return -1;

    struct sockaddr_hci addr = {
        .hci_family = AF_BLUETOOTH,
        .hci_dev = HCI_DEV_NONE,
        .hci_channel = HCI_CHANNEL_CONTROL,
    };
    if (bind(s, (struct sockaddr*) &addr, sizeof(addr)) < 0) {
        close(s);
        return -1;
    }

    return s;
}

static void btmgmt_request_config_info(int s) {
    struct btmgmt_hdr cmd = {
        .cmd = BTMGMT_CMD_READ_CONFIG_INFO,
        .id = HCI_CONTROLLER,
        .len = 0,
    };

    if (write(s, &cmd, sizeof(cmd)) < 0) {
        ALOGE("Failed to request controller configuration information: %s",
            strerror(errno));
    }
}

static void btmgmt_set_public_addr(int s, const uint8_t bdaddr[MAC_ADDRESS_SIZE]) {
    struct btmgmt_cmd_set_public_addr cmd = {
        .hdr = {
            .cmd = BTMGMT_CMD_SET_PUBLIC_ADDR,
            .id = HCI_CONTROLLER,
            .len = sizeof(cmd) - sizeof(cmd.hdr),
        },
    };
    memcpy(cmd.addr, bdaddr, sizeof(cmd.addr));

    if (write(s, &cmd, sizeof(cmd)) != sizeof(cmd)) {
        ALOGE("Failed to write set public address command: %s", strerror(errno));
    }
}

static void btmgmt_complete_set_public_addr(struct btmgmt_ev_cmd_status* ev,
        const uint8_t bdaddr[MAC_ADDRESS_SIZE]) {
    if (ev->status == 0) {
        ALOGI("Updated public address to " MAC_ADDRESS_FORMAT,
            MAC_ADDRESS_ARGS(bdaddr));
    } else {
        ALOGE("Failed to update public address to " MAC_ADDRESS_FORMAT
            ": error 0x%x", MAC_ADDRESS_ARGS(bdaddr), ev->status);
    }
}

static bool btmgmt_config_needs_public_addr(struct btmgmt_ev_cmd_status* ev) {
    struct btmgmt_ev_cc_config_info* info = (struct btmgmt_ev_cc_config_info*) ev;
    if (info->ev.status) {
        if (info->ev.status != BTMGMT_ERR_INVALID_INDEX)
            ALOGE("Failed to read controller configuration information: 0x%x",
                info->ev.status);
        return false;
    }

    if (info->ev.hdr.cmd != BTMGMT_EV_CMD_COMPLETE
            || info->ev.hdr.len < sizeof(*info) - sizeof(info->ev.hdr))
        return false;

    if (info->missing_options & BTMGMT_OPT_PUBLIC_ADDRESS) {
        return true;
    } else {
        ALOGD("Controller is already configured with a public address");
        return false;
    }
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        ALOGE("Usage: bdaddr <bdaddr>");
        return 1;
    }

    uint8_t bdaddr[MAC_ADDRESS_SIZE];
    if (strlen(argv[1]) != MAC_ADDRESS_LENGTH
        || sscanf(argv[1], MAC_ADDRESS_FORMAT,
            &bdaddr[5], &bdaddr[4], &bdaddr[3],
            &bdaddr[2], &bdaddr[1], &bdaddr[0]) != MAC_ADDRESS_SIZE) {
        ALOGE("Invalid MAC address: %s", argv[1]);
        return 1;
    }

    int s = btmgmt_connect();
    if (s < 0) {
        ALOGE("Failed to create Bluetooth management socket: %s", strerror(errno));
        return 1;
    }

    btmgmt_request_config_info(s);

    char buf[MESSAGE_BUFFER];
    struct btmgmt_hdr* hdr = (struct btmgmt_hdr*) buf;
    struct btmgmt_ev_cmd_status* ev = (struct btmgmt_ev_cmd_status*) hdr;

    while (true) {
        ssize_t len = read(s, buf, sizeof(buf));
        if (len < (ssize_t) sizeof(struct btmgmt_hdr))
            continue;
        if (len < (ssize_t) sizeof(struct btmgmt_hdr) + hdr->len)
            continue;
        if (hdr->id != HCI_CONTROLLER)
            continue;

        switch (hdr->cmd) {
        case BTMGMT_EV_CMD_COMPLETE:
        case BTMGMT_EV_CMD_STATUS:
            if (hdr->len < sizeof(*ev) - sizeof(hdr))
                continue;

            switch (ev->cmd) {
            case BTMGMT_CMD_READ_CONFIG_INFO:
                if (btmgmt_config_needs_public_addr(ev))
                    btmgmt_set_public_addr(s, bdaddr);
                break;
            case BTMGMT_CMD_SET_PUBLIC_ADDR:
                btmgmt_complete_set_public_addr(ev, bdaddr);
                break;
            }

            break;
        case BTMGMT_EV_UNCONF_INDEX_ADDED:
            btmgmt_request_config_info(s);
            break;
        }
    }
}
