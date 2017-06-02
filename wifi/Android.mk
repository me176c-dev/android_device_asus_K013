LOCAL_PATH := $(call my-dir)

WPA_SUPPL_DIR = external/wpa_supplicant_8

# Private driver command implementation
include $(CLEAR_VARS)
LOCAL_MODULE := lib_driver_cmd_brcmfmac
LOCAL_C_INCLUDES := $(WPA_SUPPL_DIR)/src
LOCAL_SRC_FILES := driver_cmd_nl80211.c
include $(BUILD_STATIC_LIBRARY)

# wpa_supplicant.conf
WIFI_DRIVER_SOCKET_IFACE := wlan0
include $(WPA_SUPPL_DIR)/wpa_supplicant/wpa_supplicant_conf.mk
