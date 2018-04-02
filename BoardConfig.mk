TARGET_BOARD_PLATFORM := baytrail

TARGET_ARCH := x86
TARGET_ARCH_VARIANT := silvermont
TARGET_CPU_ABI := x86

MALLOC_SVELTE := true

TARGET_INIT_VENDOR_LIB := libinit_me176c
TARGET_IGNORE_RO_BOOT_SERIALNO := true

WITH_DEXPREOPT := true
WITH_DEXPREOPT_PIC := true

TARGET_DEVICE ?= me176c

BOARD_SEPOLICY_DIRS += device/asus/$(TARGET_DEVICE)/sepolicy

TARGET_RELEASETOOLS_EXTENSIONS := device/asus/$(TARGET_DEVICE)

include device/asus/$(TARGET_DEVICE)/board/*.mk
include vendor/asus/me176c/board.mk
