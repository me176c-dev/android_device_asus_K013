TARGET_KERNEL_SOURCE := kernel/asus/me176c
TARGET_KERNEL_DEFCONFIG := device/asus/me176c/kernel/me176c_defconfig
TARGET_KERNEL_ARCH := x86_64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android-
BOARD_KERNEL_IMAGE_NAME := bzImage

BOARD_KERNEL_CMDLINE += quiet androidboot.hardware=me176c i915.nuclear_pageflip=1

TARGET_USES_64_BIT_BINDER := true
ENABLE_CPUSETS := true
