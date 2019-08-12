$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/go_defaults.mk)
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := K013

PRODUCT_MANUFACTURER := ASUS
PRODUCT_MODEL := MeMO Pad 7 (ME176C(X))

PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Tablet originally shipped with Android 4.4 KitKat
PRODUCT_SHIPPING_API_LEVEL := 19

# Soong Namespace to build all Blueprint modules in this repository
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Overlays
PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Init
PRODUCT_PACKAGES += \
    fstab.me176c \
    init.me176c.rc \
    ueventd.me176c.rc \
    init.recovery.me176c.rc \
    kernel-modules.me176c.rc

# Health
# Note: android.hardware.health@2.0-service.override would be enough but it's
# completely broken: its init.rc file still references the binary without .override
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-service \
    android.hardware.health@2.0-service.override

# Keymaster
# TODO: 4.0 causes issues with the lock screen
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-service \
    android.hardware.keymaster@3.0-impl

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Graphics
PRODUCT_PACKAGES += \
    libdrm \
    libdrm_intel \
    gralloc.minigbm \
    libGLES_mesa \
    vulkan.anv \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.composer@2.1-service.drmfb \
    android.hardware.graphics.mapper@2.0-impl-2.1

# Audio
PRODUCT_PACKAGES += \
    audio.primary.me176c \
    audio.a2dp.default \
    audio.r_submix.default \
    audio_policy_configuration.xml \
    android.hardware.audio@4.0-impl \
    android.hardware.audio.effect@4.0-impl \
    android.hardware.audio@2.0-service

PRODUCT_PACKAGES_DEBUG += \
    tinymix

# Light HAL
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.me176c

# Media
PRODUCT_PACKAGES += \
    media_codecs.xml \
    media_profiles_V1_0.xml \
    i965_drv_video \
    libstagefrighthw \
    libmfx_omx_core \
    libmfx_omx_components_hw \
    libmfxhw32

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-service.me176c

# Sensors
PRODUCT_PACKAGES += \
    sensors.iio \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service \
    SmartCover

# Thermal daemon
PRODUCT_PACKAGES += \
    thermald \
    thermal-conf.xml

# WiFi
PRODUCT_PACKAGES += \
    wifi.me176c.rc \
    wpa_supplicant \
    wpa_supplicant.conf \
    hostapd

# Bluetooth
PRODUCT_PACKAGES += \
    bluetooth.me176c.rc \
    android.hardware.bluetooth@1.0-service.btlinux

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.1-service.clearkey

# Hardware
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml

# Include well known keys for verification
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(LOCAL_PATH)/recovery/lambdadroid \
    $(LOCAL_PATH)/recovery/lineage \
    $(LOCAL_PATH)/recovery/open_gapps

# See firmware/README.md
$(call inherit-product-if-exists, $(LOCAL_PATH)/firmware/device-vendor.mk)
$(call inherit-product-if-exists, vendor/google/chromeos-x86/target/native_bridge_arm_on_x86.mk)
