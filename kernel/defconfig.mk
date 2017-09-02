LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := me176c_defconfig
LOCAL_MODULE_CLASS := FAKE
LOCAL_SRC_FILE := me176c_defconfig

include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/$(LOCAL_SRC_FILE) dsdt.hex
	$(copy-file-to-target)
	@echo CONFIG_ACPI_CUSTOM_DSDT_FILE=\"$(abspath $(BUILT_ACPI_DSDT_TABLE))\" >> $@

BUILT_ME176C_DEFCONFIG := $(LOCAL_BUILT_MODULE)
