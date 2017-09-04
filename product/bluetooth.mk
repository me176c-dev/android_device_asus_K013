PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path=/oemcfg/bt/bd_addr.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml
