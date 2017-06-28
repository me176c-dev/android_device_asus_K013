PRODUCT_PACKAGES += \
    sensors.iio

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.sensors=iio \
    ro.iio.accel.panel=5 \
    ro.iio.accel.rotation=4 \
    ro.iio.magn.quirks=no-trig

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml
