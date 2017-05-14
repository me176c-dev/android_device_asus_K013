TARGET_BOARD_PLATFORM := android_ia

TARGET_ARCH := x86
TARGET_ARCH_VARIANT := silvermont
TARGET_CPU_ABI := x86

TARGET_USES_64_BIT_BINDER := true

MALLOC_SVELTE := true

WITH_DEXPREOPT := true
WITH_DEXPREOPT_PIC := true

include device/asus/K013/board/*.mk
