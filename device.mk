$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Tablet originally shipped with Android 4.4 KitKat
PRODUCT_SHIPPING_API_LEVEL := 19

include $(LOCAL_PATH)/product/*.mk

$(call inherit-product, vendor/asus/me176c/proprietary.mk)
