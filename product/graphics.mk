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
    ro.opengles.version=196609

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml
