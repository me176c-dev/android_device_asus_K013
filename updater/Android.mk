LOCAL_PATH := $(call my-dir)

ifdef project-path-for
    RECOVERY_PATH := $(call project-path-for,recovery)
else
    RECOVERY_PATH := bootable/recovery
endif

include $(CLEAR_VARS)
LOCAL_MODULE := libasus_updater
LOCAL_SRC_FILES := asus-updater.cpp
LOCAL_C_INCLUDES := \
    $(RECOVERY_PATH)/edify/include \
    $(RECOVERY_PATH)/otautil/include
LOCAL_CFLAGS := -Werror
include $(BUILD_STATIC_LIBRARY)
