LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_PACKAGE_NAME := SmartCover
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES := $(call all-java-files-under, java)
LOCAL_INIT_RC := me176c-smartcover.rc
LOCAL_PRIVATE_PLATFORM_APIS := true
include $(BUILD_PACKAGE)
