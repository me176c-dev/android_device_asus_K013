# Audio HAL
PRODUCT_PACKAGES += \
    me176c-audio.rc \
    audio.primary.pfw \
    audio.a2dp.default \
    audio.r_submix.default \
    audio_policy_configuration.xml \
    AudioParameterFramework.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.audio.primary=pfw \
    audio.device.name=bytcrrt5640

# Firmware
PRODUCT_COPY_FILES += \
    vendor/linux/firmware/intel/fw_sst_0f28.bin:system/vendor/firmware/intel/fw_sst_0f28.bin \
    vendor/linux/firmware/LICENCE.fw_sst_0f28:system/vendor/firmware/LICENCE.fw_sst_0f28

# Debug tools
PRODUCT_PACKAGES_DEBUG += \
    tinymix
