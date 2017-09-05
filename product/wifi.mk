# WiFi
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

# WiFi-only device
PRODUCT_PROPERTY_OVERRIDES += \
    ro.radio.noril=true

PRODUCT_PACKAGES += \
    me176c-wifi.rc \
    wpa_supplicant \
    wpa_supplicant.conf \
    hostapd

# WiFi interface
WIFI_DRIVER_SOCKET_IFACE := wlan0
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=$(WIFI_DRIVER_SOCKET_IFACE)

# Firmware and NVRAM config
PRODUCT_COPY_FILES += \
    vendor/linux/firmware/brcm/brcmfmac43362-sdio.bin:system/vendor/firmware/brcm/brcmfmac43362-sdio.bin \
    $(LOCAL_PATH)/wifi/nvram.txt:system/vendor/firmware/brcm/brcmfmac43362-sdio.txt
