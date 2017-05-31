FIRMWARE_DIR := vendor/linux/firmware

PRODUCT_COPY_FIRMWARE := \
	brcm/brcmfmac43362-sdio.bin

PRODUCT_COPY_FILES += \
    $(foreach f,$(PRODUCT_COPY_FIRMWARE),$(FIRMWARE_DIR)/$(f):$(TARGET_COPY_OUT_VENDOR)/firmware/$(f))
