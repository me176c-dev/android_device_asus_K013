# Mesa
PRODUCT_PACKAGES += \
    libGLES_mesa \
    libGLES_android

PRODUCT_PACKAGES += \
    libdrm \
    libdrm_intel \
    libsync

PRODUCT_COPY_FILES += \
    device/intel/android_ia/common/graphics/drirc:system/etc/drirc

# HWComposer IA
PRODUCT_PACKAGES += \
    hwcomposer.android_ia

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    hwc.drm.use_overlay_planes=1 \
    ro.hardware.hwcomposer=android_ia

# Mini gbm
PRODUCT_PACKAGES += \
    gralloc.android_ia

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.gralloc=android_ia

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml

# GLES version
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196609

# Vulkan
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml

PRODUCT_PACKAGES += \
    vulkan.android_ia \
    libvulkan_intel

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.vulkan=android_ia
