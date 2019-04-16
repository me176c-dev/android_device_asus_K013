ifeq ($(PATCH_SIGNATURE_SPOOFING), true)
    TARGET_SYSTEM_PROP += $(TARGET_DEVICE_DIR)/patches/signature-spoofing/system.prop
endif
