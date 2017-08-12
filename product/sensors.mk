PRODUCT_PACKAGES += \
    sensors.iio \
    SmartCover

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.sensors=iio \
    ro.iio.accel.panel=5 \
    ro.iio.accel.rotation=4 \
    ro.iio.magn.quirks=no-trig
