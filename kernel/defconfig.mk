LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := me176c_defconfig
LOCAL_MODULE_CLASS := FAKE
LOCAL_SRC_FILE := me176c_defconfig
include $(BUILD_PREBUILT)

TARGET_KERNEL_DEFCONFIG := $(LOCAL_BUILT_MODULE)
include vendor/asus/me176c/kernel_defconfig.mk
