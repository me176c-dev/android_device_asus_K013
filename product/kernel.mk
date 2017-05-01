TARGET_KERNEL_ARCH := x86_64
BOARD_USE_64BIT_KERNEL := true

KERNEL_MODULES_ROOT_PATH := /vendor/lib/modules
KERNEL_MODULES_ROOT := $(KERNEL_MODULES_ROOT_PATH)

FIRMWARES_DIR := vendor/linux/firmware

LOCAL_FIRMWARE_SRC := \
    i6050-fw-usb-1.5.sbcf \
    i2400m-fw-usb-1.4.sbcf \
    i2400m-fw-usb-1.5.sbcf

# List of complete firmware folders to be copied
LOCAL_FIRMWARE_DIR := \
    intel \
    i915

LOCAL_FIRMWARE_SRC += $(foreach f,$(LOCAL_FIRMWARE_DIR),$(shell cd $(FIRMWARES_DIR) && find $(f) -type f) )

PRODUCT_COPY_FILES += \
    $(foreach f,$(LOCAL_FIRMWARE_SRC),$(FIRMWARES_DIR)/$(f):$(TARGET_COPY_OUT_VENDOR)/firmware/$(f))
