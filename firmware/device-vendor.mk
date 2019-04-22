# linux-firmware (from https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/)
PRODUCT_COPY_FILES += \
    vendor/linux/firmware/brcm/brcmfmac43362-sdio.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/brcm/brcmfmac43362-sdio.bin:broadcom \
    vendor/linux/firmware/LICENCE.broadcom_bcm43xx:$(TARGET_COPY_OUT_VENDOR)/firmware/LICENCE.broadcom_bcm43xx:broadcom \
    vendor/linux/firmware/intel/fw_sst_0f28.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/intel/fw_sst_0f28.bin:intel \
    vendor/linux/firmware/LICENCE.fw_sst_0f28:$(TARGET_COPY_OUT_VENDOR)/firmware/LICENCE.fw_sst_0f28:intel

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

    BUILD_FINGERPRINT := asus/WW_K013/K013:5.0/LRX21V/WW_K013-12.10.1.36-20151230:user/release-keys
else
    $(warning Building without proprietary ASUS firmware. WiFi/BT will not work. \
        See firmware/README.md for details or run "extract-files.sh" to download it.)
endif
