PRODUCT_PACKAGES += \
    media_codecs.xml

# Enable deep buffer for video playback
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.audio.deep=true

# Hardware acceleration
PRODUCT_PACKAGES += \
    i965_drv_video

PRODUCT_PROPERTY_OVERRIDES += media.sf.hwaccel=1
