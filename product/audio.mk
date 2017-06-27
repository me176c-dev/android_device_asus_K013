# Audio HAL
PRODUCT_PACKAGES += \
    audio.primary.android_ia \
    audio_policy_configuration.xml \
    AudioParameterFramework.xml \
    media_codecs.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.audio.primary=android_ia \
    audio.device.name=bytcrrt5640

# Enable deep buffer for video playback
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.audio.deep=true

# Firmware
PRODUCT_COPY_FILES += \
    vendor/linux/firmware/intel/fw_sst_0f28.bin:system/vendor/firmware/intel/fw_sst_0f28.bin

# Temporary manual toggle in quick settings to enable headphones
# This will be removed once Audio jack detection is implemented
PRODUCT_PACKAGES += \
    HeadphoneToggle

# Debug tools
PRODUCT_PACKAGES_DEBUG += \
    tinymix
