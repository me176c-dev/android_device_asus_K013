$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

PRODUCT_CHARACTERISTICS := tablet
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.mode=DISABLED

include $(LOCAL_PATH)/product/*.mk

$(call inherit-product, vendor/asus/me176c/vendor-me176c.mk)
