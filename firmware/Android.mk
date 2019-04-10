LOCAL_PATH := $(call my-dir)
include $(LOCAL_PATH)/acpi/Android.mk

include $(CLEAR_VARS)
LOCAL_MODULE := me176c_defconfig_firmware
LOCAL_MODULE_CLASS := FAKE

include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): $(BUILT_ACPI_DSDT_TABLE)
	mkdir -p $(INITRD_PATH)/kernel/firmware/acpi
	cp "$<" $(INITRD_PATH)/kernel/firmware/acpi/dsdt.aml
	rm -f $@
	@echo "CONFIG_INITRAMFS_SOURCE=\"$(abspath $(INITRD_PATH))\"" >> $@
	@echo "CONFIG_INITRAMFS_COMPRESSION_NONE=y" >> $@
	@echo "CONFIG_ACPI_TABLE_OVERRIDE_VIA_BUILTIN_INITRD=y" >> $@
$(LOCAL_BUILT_MODULE): INITRD_PATH := $(dir $(LOCAL_BUILT_MODULE))/initrd

TARGET_FIRMWARE_KERNEL_DEFCONFIG := $(LOCAL_BUILT_MODULE)
