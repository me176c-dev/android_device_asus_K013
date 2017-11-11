LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libasus_updater
LOCAL_SRC_FILES := asus-updater.cpp
LOCAL_C_INCLUDES := $(call include-path-for, recovery)
LOCAL_CFLAGS := -Werror
include $(BUILD_STATIC_LIBRARY)
