LOCAL_PATH := $(call my-dir)

IASL := $(HOST_OUT_EXECUTABLES)/iasl

include $(CLEAR_VARS)
LOCAL_MODULE := dsdt.hex
LOCAL_MODULE_CLASS := FAKE
LOCAL_DSL_FILE := dsdt.dsl

include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/$(LOCAL_DSL_FILE) $(IASL)
	$(IASL) -p $(basename $@) -tc $<

BUILT_ACPI_DSDT_TABLE := $(LOCAL_BUILT_MODULE)
