LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), K013)
include $(call all-makefiles-under, $(LOCAL_PATH))
endif
