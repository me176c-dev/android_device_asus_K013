PRODUCT_PACKAGES += \
    thermald

THERMALD_GENERATE_CONFIG := false
THERMALD_DETECT_THERMAL_ZONES := false
THERMALD_BACKLIGHT_COOLING_DEVICE := false

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal/thermal-conf.xml:system/etc/thermald/thermal-conf.xml
