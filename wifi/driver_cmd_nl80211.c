#include <utils/includes.h>
#include <utils/common.h>
#include <drivers/driver_nl80211.h>

#define MACADDR_CMD "MACADDR"

static int wpa_driver_nl80211_driver_cmd_macaddr(void *priv, char *buf, size_t buf_len) {
    struct i802_bss *bss = priv;
    return os_snprintf(buf, buf_len, "Macaddr = " MACSTR "\n", MAC2STR(bss->addr));
}

int wpa_driver_nl80211_driver_cmd(void *priv, char *cmd, char *buf, size_t buf_len) {
    if (os_strcasecmp(cmd, MACADDR_CMD) == 0) {
        return wpa_driver_nl80211_driver_cmd_macaddr(priv, buf, buf_len);
    }

    return -1;
}

// TODO
int wpa_driver_set_p2p_noa(void *priv, u8 count, int start, int duration) {
    return 0;
}

int wpa_driver_get_p2p_noa(void *priv, u8 *buf, size_t len) {
    return 0;
}

int wpa_driver_set_p2p_ps(void *priv, int legacy_ps, int opp_ps, int ctwindow) {
    return -1;
}

int wpa_driver_set_ap_wps_p2p_ie(void *priv, const struct wpabuf *beacon,
    const struct wpabuf *proberesp, const struct wpabuf *assocresp) {
    return 0;
}
