LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := me176c_defconfig
LOCAL_MODULE_CLASS := FAKE
LOCAL_SRC_FILE := me176c_defconfig

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/$(LOCAL_SRC_FILE)
	$(copy-file-to-target)
	$(if $(EXTRA_DEFCONFIG), cat $(EXTRA_DEFCONFIG) >> $@)

ifeq ($(RECOVERY_VARIANT), twrp)
$(LOCAL_BUILT_MODULE): EXTRA_DEFCONFIG := $(LOCAL_PATH)/me176c_defconfig_twrp
endif

TARGET_KERNEL_DEFCONFIG := $(LOCAL_BUILT_MODULE)