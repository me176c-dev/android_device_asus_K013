# Architecture
TARGET_BOARD_PLATFORM := baytrail

TARGET_ARCH := x86
TARGET_ARCH_VARIANT := silvermont
TARGET_CPU_ABI := x86

TARGET_DEVICE ?= me176c

# Text relocations
# Needed for most ASM code on x86 right now
# TODO: I should consider switching to x86_64...
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_NEEDS_PLATFORM_TEXTRELS := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 0

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1879048192
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12285079040
BOARD_CACHEIMAGE_PARTITION_SIZE := 678428672

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/asus/me176c
TARGET_KERNEL_ARCH := x86_64

# Use host distribution compiler if it is recent enough for Retpoline support
ifneq ($(shell printf "%s\n" "7.3" "`gcc -dumpversion`" | sort -cV 2>&1),)
    TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android-
endif

BOARD_KERNEL_IMAGE_NAME := bzImage
BOARD_KERNEL_CMDLINE += quiet androidboot.hardware=me176c tsc=reliable rfkill.default_state=0
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware

BOARD_SEPOLICY_DIRS += device/asus/$(TARGET_DEVICE)/sepolicy
# Uncomment this to set SELinux to permissive by default
#BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

TARGET_USES_64_BIT_BINDER := true
ENABLE_CPUSETS := true

# Optimize for low RAM devices
MALLOC_SVELTE := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_me176c
TARGET_IGNORE_RO_BOOT_SERIALNO := true

# Graphics
BOARD_KERNEL_CMDLINE += vga=current i915.modeset=1 i915.enable_fbc=1 drm.vblankoffdelay=1

# Enable all 255 brightness levels
BOARD_KERNEL_CMDLINE += i915.pwm_max_brightness=255

# Surfaceflinger
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000

# Mesa
BOARD_GPU_DRIVERS := i965

# Gralloc
BOARD_USES_MINIGBM := true
BOARD_USES_GRALLOC1 := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_CUSTOM_BT_CONFIG := device/asus/me176c/bluetooth/vnd_me176c.txt

# Media
BUILD_WITH_FULL_STAGEFRIGHT := true
USE_MEDIASDK := true
BOARD_HAVE_MEDIASDK_OPEN_SOURCE := true

# Sensors
USE_IIO_SENSOR_HAL := true
NO_IIO_EVENTS := true

# Thermal daemon
THERMALD_GENERATE_CONFIG := false
THERMALD_DETECT_THERMAL_ZONES := false
THERMALD_BACKLIGHT_COOLING_DEVICE := false

# WiFi
WIFI_DRIVER_SOCKET_IFACE := wlan0
WIFI_DRIVER_STATE_CTRL_PARAM := /sys/class/rfkill/rfkill2/state
WIFI_DRIVER_STATE_ON  := 1
WIFI_DRIVER_STATE_OFF := 0

WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_brcmfmac
BOARD_HOSTAPD_DRIVER := NL80211

# Build pre-optimized to speed up initial boot
WITH_DEXPREOPT := true
WITH_DEXPREOPT_PIC := true

# Set correct fingerprint in ZIP package
TARGET_RELEASETOOLS_EXTENSIONS := device/asus/$(TARGET_DEVICE)

# TWRP
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true

TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true

# Remove once TWRP supports FunctionFS for MTP
TW_EXCLUDE_MTP := true

TW_EXCLUDE_DEFAULT_USB_INIT := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file"

TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone6/temp

TW_NO_LEGACY_PROPS := true

TARGET_RECOVERY_UPDATER_LIBS += libasus_updater
TW_FORCE_DEFAULT_UPDATER_FINGERPRINT := asus/WW_K013/K013:5.0/

# Include build date in TWRP version
TW_DEVICE_VERSION := $(shell date -u +%Y-%m-%d)

-include vendor/asus/me176c/board.mk
