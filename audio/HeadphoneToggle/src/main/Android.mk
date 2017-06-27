LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_PACKAGE_NAME := HeadphoneToggle
LOCAL_SRC_FILES := $(call all-java-files-under, java)
include $(BUILD_PACKAGE)
