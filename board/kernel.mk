TARGET_KERNEL_SOURCE := kernel/asus/me176c
TARGET_KERNEL_DEFCONFIG = $(BUILT_ME176C_DEFCONFIG)
TARGET_KERNEL_ARCH := x86_64

# Use host distribution compiler if it is recent enough for Retpoline support
ifeq ($(shell printf "%s\n" "7.3" "`gcc -dumpversion`" | sort -cV 2>&1),)
    TARGET_KERNEL_CROSS_COMPILE_PREFIX :=
else
    TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android-
endif

BOARD_KERNEL_IMAGE_NAME := bzImage

BOARD_KERNEL_CMDLINE += quiet androidboot.hardware=me176c tsc=reliable rfkill.default_state=0

TARGET_USES_64_BIT_BINDER := true
ENABLE_CPUSETS := true
