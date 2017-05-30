LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), me176c)
include $(call all-makefiles-under, $(LOCAL_PATH))
endif
