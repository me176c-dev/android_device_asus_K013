LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := me176c-wifi.rc
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_RELATIVE_PATH := init
include $(BUILD_PREBUILT)

WPA_SUPPL_DIR = external/wpa_supplicant_8

# Private driver command implementation
include $(CLEAR_VARS)
LOCAL_MODULE := lib_driver_cmd_brcmfmac
LOCAL_C_INCLUDES := $(WPA_SUPPL_DIR)/src
LOCAL_SRC_FILES := driver_cmd_nl80211.c
include $(BUILD_STATIC_LIBRARY)

# wpa_supplicant.conf
include $(WPA_SUPPL_DIR)/wpa_supplicant/wpa_supplicant_conf.mk
