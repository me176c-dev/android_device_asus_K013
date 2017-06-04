LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libinit_me176c
LOCAL_C_INCLUDES := system/core/init
LOCAL_SRC_FILES := init_me176c.cpp
include $(BUILD_STATIC_LIBRARY)
