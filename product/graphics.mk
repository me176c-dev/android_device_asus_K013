# DRM
PRODUCT_PACKAGES += \
    libdrm \
    libdrm_intel

# Hardware composer
PRODUCT_PACKAGES += \
    hwcomposer.me176c

# Gralloc
PRODUCT_PACKAGES += \
    gralloc.android_ia

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.gralloc=android_ia

# Mesa
PRODUCT_PACKAGES += \
    libGLES_mesa

# GLES version
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# Vulkan
PRODUCT_PACKAGES += \
    vulkan.mesa

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.vulkan=mesa

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml
