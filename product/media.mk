PRODUCT_PACKAGES += \
    media_codecs.xml

# Enable deep buffer for video playback
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.audio.deep=true

# Hardware acceleration
PRODUCT_PACKAGES += \
    i965_drv_video

# Hardware accelerated codecs
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmfxhw32

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/mfx_omxil_core.conf:system/etc/mfx_omxil_core.conf
