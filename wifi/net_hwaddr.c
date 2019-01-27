#define LOG_TAG "net_hwaddr"

#include <errno.h>
#include <string.h>
#include <sys/socket.h>
#include <linux/netdevice.h>
#include <linux/rtnetlink.h>
#include <cutils/uevent.h>
#include <log/log.h>

#define MAC_ADDRESS_SIZE    6
#define MAC_ADDRESS_LENGTH  (MAC_ADDRESS_SIZE*2 + MAC_ADDRESS_SIZE-1)
#define MAC_ADDRESS_FORMAT  "%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx"
#define MAC_ADDRESS_ARGS(addr) \
    (addr)[0], (addr)[1], (addr)[2], (addr)[3], (addr)[4], (addr)[5]

#define MESSAGE_BUFFER  8192
#define RECEIVE_BUFFER  (1 * 1024 * 1024) // 1 MiB

static int rtnetlink_connect() {
    int s = socket(AF_NETLINK, SOCK_DGRAM | SOCK_CLOEXEC, NETLINK_ROUTE);
    if (s < 0)
        return -1;

    int on = 1;
    if (setsockopt(s, SOL_SOCKET, SO_PASSCRED, &on, sizeof(on)) < 0)
        goto err;

    int rcvbuf = RECEIVE_BUFFER;
    if (setsockopt(s, SOL_SOCKET, SO_RCVBUF, &rcvbuf, sizeof(rcvbuf)) < 0)
        goto err;

    struct sockaddr_nl addr = {
        .nl_family = AF_NETLINK,
        .nl_groups = RTMGRP_LINK,
    };
    if (bind(s, (struct sockaddr*) &addr, sizeof(addr)) < 0) {
        goto err;
    }

    return s;

err:
    close(s);
    return -1;
}

static int rtnetlink_send(int s, struct nlmsghdr* nh) {
    struct sockaddr_nl addr = {
        .nl_family = AF_NETLINK,
    };
    struct iovec iov = { nh, nh->nlmsg_len };
    struct msghdr msg = { &addr, sizeof(addr), &iov, 1, NULL, 0, 0 };

    return sendmsg(s, &msg, 0);
}

static void rtnetlink_send_getlink(int s, const char* ifname) {
    struct {
        struct nlmsghdr hdr;
        struct ifinfomsg info;
        struct rtattr attr;
        char ifname[IFNAMSIZ];
    } req = {
        .hdr = {
            .nlmsg_type = RTM_GETLINK,
            .nlmsg_len = NLMSG_LENGTH(sizeof(req)),
            .nlmsg_flags = NLM_F_REQUEST,
        },
        .attr = {
            .rta_type = IFLA_IFNAME,
            .rta_len = sizeof(req.ifname),
        }
    };
    strcpy(req.ifname, ifname);

    if (rtnetlink_send(s, &req.hdr) < 0)
        ALOGE("Failed to request network interface: %s", strerror(errno));
}

static void rtnetlink_send_setlink_hwaddr(int s, int index,
        const char hwaddr[MAC_ADDRESS_SIZE]) {
    struct {
        struct nlmsghdr hdr;
        struct ifinfomsg info;
        struct rtattr attr;
        char hwaddr[MAX_ADDR_LEN];
    } req = {
        .hdr = {
            .nlmsg_type = RTM_SETLINK,
            .nlmsg_len = NLMSG_LENGTH(sizeof(req)),
            .nlmsg_flags = NLM_F_REQUEST | NLM_F_ACK,
            .nlmsg_seq = 1,
        },
        .info = {
            .ifi_index = index,
        },
        .attr = {
            .rta_type = IFLA_ADDRESS,
            .rta_len = sizeof(req.hwaddr),
        }
    };
    memcpy(req.hwaddr, hwaddr, MAC_ADDRESS_SIZE);

    if (rtnetlink_send(s, &req.hdr) < 0)
        ALOGE("Failed to request setlink address: %s", strerror(errno));
}

static const char* rtnetlink_find_ifname(struct nlmsghdr* nh, struct ifinfomsg *iface) {
    size_t len = IFLA_PAYLOAD(nh);
    for (struct rtattr *attr = IFLA_RTA(iface); RTA_OK(attr, len); attr = RTA_NEXT(attr, len)) {
        if (attr->rta_type == IFLA_IFNAME)
            return RTA_DATA(attr);
    }
    return NULL;
}

static void rtnetlink_process_newlink(int s, struct nlmsghdr* nh,
        const char* ifname, const char hwaddr[MAC_ADDRESS_SIZE], int *index) {

    struct ifinfomsg *iface = NLMSG_DATA(nh);
    const char* link_ifname = rtnetlink_find_ifname(nh, iface);

    // Check if this is the correct interface
    if (link_ifname && !strcmp(link_ifname, ifname)) {
        if (*index) {
            ALOGW("Multiple network interfaces with the same name? %d != %d",
                *index, iface->ifi_index);
        }

        // Update the hardware address
        *index = iface->ifi_index;
        rtnetlink_send_setlink_hwaddr(s, iface->ifi_index, hwaddr);
    }
}

static void rtnetlink_check_error(struct nlmsghdr* nh,
        const char* ifname, const char hwaddr[MAC_ADDRESS_SIZE]) {
    if (nh->nlmsg_seq != 1)
        return; // Ignore

    struct nlmsgerr* msg = NLMSG_DATA(nh);
    if (msg->error == 0) {
        ALOGI("Updated hardware address of interface '%s' to " MAC_ADDRESS_FORMAT,
            ifname, MAC_ADDRESS_ARGS(hwaddr));
    } else {
        ALOGE("Failed to change hardware address of interface '%s' to "
            MAC_ADDRESS_FORMAT ": %s",
            ifname, MAC_ADDRESS_ARGS(hwaddr), strerror(-msg->error));
    }
}

int main(int argc, char *argv[]) {
    if (argc < 3) {
        ALOGE("Usage: net-hwaddr <ifname> <hwaddr>");
        return 1;
    }

    const char* ifname = argv[1];
    if (strlen(ifname) >= IFNAMSIZ) {
        ALOGE("Interface name too long");
        return 1;
    }

    char hwaddr[MAC_ADDRESS_SIZE];
    if (strlen(argv[2]) != MAC_ADDRESS_LENGTH
        || sscanf(argv[2], MAC_ADDRESS_FORMAT,
            &hwaddr[0], &hwaddr[1], &hwaddr[2],
            &hwaddr[3], &hwaddr[4], &hwaddr[5]) != MAC_ADDRESS_SIZE) {
        ALOGE("Invalid MAC address: %s", argv[2]);
        return 1;
    }

    int s = rtnetlink_connect();
    if (s < 0) {
        ALOGE("Failed to create netlink socket: %s", strerror(errno));
        return 1;
    }

    // Request a notification in case the network interface already exists
    rtnetlink_send_getlink(s, ifname);

    int index = 0;
    while (true) {
        uid_t uid;
        char buf[MESSAGE_BUFFER];
        size_t len = uevent_kernel_recv(s, buf, sizeof(buf), false, &uid);
        if (len < 0)
            continue;

        for (struct nlmsghdr* nh = (struct nlmsghdr*) buf;
                NLMSG_OK(nh, len); nh = NLMSG_NEXT(nh, len)) {
            struct ifinfomsg *iface = NLMSG_DATA(nh);
            switch (nh->nlmsg_type) {
            case RTM_NEWLINK:
                 // Ignore if the address was already updated
                if (iface->ifi_index != index)
                    rtnetlink_process_newlink(s, nh, ifname, hwaddr, &index);
                break;
            case RTM_DELLINK:
                if (iface->ifi_index == index)
                    index = 0;
                break;
            case NLMSG_ERROR:
                rtnetlink_check_error(nh, ifname, hwaddr);
                break;
            }
        }
    }
}
