$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := K013

PRODUCT_MANUFACTURER := ASUS
PRODUCT_MODEL := ASUS MeMO Pad 7 (ME176C)

PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Tablet originally shipped with Android 4.4 KitKat
PRODUCT_SHIPPING_API_LEVEL := 19

# Overlays
PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Init
PRODUCT_PACKAGES += \
    fstab.me176c \
    init.me176c.rc \
    ueventd.me176c.rc \
    init.recovery.me176c.rc

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service

# Display
TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 800

# Graphics
PRODUCT_PACKAGES += \
    libdrm \
    libdrm_intel \
    gralloc.android_ia \
    libGLES_mesa \
    vulkan.mesa \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl

# Audio
PRODUCT_PACKAGES += \
    me176c-audio.rc \
    audio.primary.me176c \
    audio.a2dp.default \
    audio.r_submix.default \
    audio_policy_configuration.xml \
    android.hardware.audio@4.0-impl

PRODUCT_PACKAGES_DEBUG += \
    tinymix

# Light HAL
PRODUCT_PACKAGES += \
    lights.me176c

# Media
PRODUCT_PACKAGES += \
    media_codecs.xml \
    i965_drv_video \
    libstagefrighthw \
    libmfxhw32

# Power
PRODUCT_PACKAGES += \
    power.me176c

# Sensors
PRODUCT_PACKAGES += \
    sensors.iio \
    SmartCover

# Thermal daemon
PRODUCT_PACKAGES += \
    thermald \
	thermal-conf.xml

# WiFi
PRODUCT_PACKAGES += \
    me176c-wifi.rc \
    wpa_supplicant \
    wpa_supplicant.conf \
    hostapd

# Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor \
    android.hardware.bluetooth@1.0-impl

# Hardware
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

# Firmware
PRODUCT_COPY_FILES += \
    vendor/linux/firmware/brcm/brcmfmac43362-sdio.bin:system/vendor/firmware/brcm/brcmfmac43362-sdio.bin \
    vendor/linux/firmware/LICENCE.broadcom_bcm43xx:system/vendor/firmware/LICENCE.broadcom_bcm43xx \
    vendor/linux/firmware/intel/fw_sst_0f28.bin:system/vendor/firmware/intel/fw_sst_0f28.bin \
    vendor/linux/firmware/LICENCE.fw_sst_0f28:system/vendor/firmware/LICENCE.fw_sst_0f28

# This is needed to let TWRP detect its own path in the LineageOS tree
$(call project-set-path,recovery,bootable/recovery)

# Include well known keys for verification
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(LOCAL_PATH)/recovery/lambdadroid \
    $(LOCAL_PATH)/recovery/lineage \
    $(LOCAL_PATH)/recovery/open_gapps

$(call inherit-product-if-exists, vendor/asus/$(PRODUCT_DEVICE)/product.mk)
