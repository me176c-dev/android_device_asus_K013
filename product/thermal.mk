PRODUCT_PACKAGES += \
    thermald

THERMALD_GENERATE_CONFIG := false

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-conf.xml:system/etc/thermald/thermal-conf.xml
