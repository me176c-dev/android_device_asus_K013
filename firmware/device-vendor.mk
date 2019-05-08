# linux-firmware (from https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/linux/brcm/brcmfmac43362-sdio.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/brcm/brcmfmac43362-sdio.bin:broadcom \
    $(LOCAL_PATH)/linux/LICENCE.broadcom_bcm43xx:$(TARGET_COPY_OUT_VENDOR)/firmware/LICENCE.broadcom_bcm43xx:broadcom \
    $(LOCAL_PATH)/linux/intel/fw_sst_0f28.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/intel/fw_sst_0f28.bin:intel \
    $(LOCAL_PATH)/linux/LICENCE.fw_sst_0f28:$(TARGET_COPY_OUT_VENDOR)/firmware/LICENCE.fw_sst_0f28:intel

# Device-specific firmware (from stock UL-K013-WW-12.10.1.36-user.zip)
ifneq ($(wildcard $(LOCAL_PATH)/proprietary),)
    PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/nvram.txt:$(TARGET_COPY_OUT_VENDOR)/firmware/brcm/brcmfmac43362-sdio.txt:asus \
        $(LOCAL_PATH)/proprietary/BCM2076B1.hcd:$(TARGET_COPY_OUT_VENDOR)/firmware/brcm/BCM2076B1.hcd:asus

    # Battery daemon (TODO: Remove or replace with open-source component)
    PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/upi_ug31xx:root/upi_ug31xx:asus

    # Allows verifying signature of stock firmware in recovery
    PRODUCT_EXTRA_RECOVERY_KEYS += $(LOCAL_PATH)/proprietary/asus
else
    $(warning Building without proprietary ASUS firmware. WiFi/BT will not work. \
        See firmware/README.md for details or run "extract-files.sh" to download it.)
endif
