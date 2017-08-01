PRODUCT_PROPERTY_OVERRIDES += \
    ro.dalvik.vm.isa.arm=x86 \
    ro.enable.native.bridge.exec=1

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.dalvik.vm.native.bridge=libhoudini.so
