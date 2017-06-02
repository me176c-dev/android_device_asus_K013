LOCAL_PATH := $(call my-dir)

ifneq ($(filter me176c K013, $(TARGET_DEVICE)),)
include $(call all-makefiles-under, $(LOCAL_PATH))

# WiFi
WIFI_DRIVER_SOCKET_IFACE := wlan0
include external/wpa_supplicant_8/wpa_supplicant/wpa_supplicant_conf.mk
endif
