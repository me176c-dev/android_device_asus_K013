LOCAL_PATH := $(call my-dir)

ifneq ($(filter me176c K013, $(TARGET_DEVICE)),)
include $(call all-makefiles-under, $(LOCAL_PATH))
endif
