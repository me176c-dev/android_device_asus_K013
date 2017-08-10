TARGET_BOARD_PLATFORM := baytrail

TARGET_ARCH := x86
TARGET_ARCH_VARIANT := silvermont
TARGET_CPU_ABI := x86

MALLOC_SVELTE := true

TARGET_INIT_VENDOR_LIB := libinit_me176c
TARGET_IGNORE_RO_BOOT_SERIALNO := true

WITH_DEXPREOPT := true
WITH_DEXPREOPT_PIC := true

ifeq ($(TARGET_DEVICE), K013)
TWRP_BUILD := true
include device/asus/K013/board/*.mk
else
include device/asus/me176c/board/*.mk
endif
