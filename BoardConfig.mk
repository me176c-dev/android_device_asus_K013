TARGET_DEVICE_DIR := device/asus/$(TARGET_DEVICE)

# Architecture
TARGET_BOARD_PLATFORM := baytrail

TARGET_ARCH := x86
TARGET_ARCH_VARIANT := silvermont
TARGET_CPU_ABI := x86

# Partitions
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1879048192
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12285079040
BOARD_CACHEIMAGE_PARTITION_SIZE := 678428672

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/asus/$(TARGET_DEVICE)
TARGET_KERNEL_ARCH := x86_64

# Use host distribution compiler if it is recent enough for Retpoline support
ifneq ($(shell printf "%s\n" "7.3" "`gcc -dumpversion`" | sort -cV 2>&1),)
    TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android-
endif

BOARD_KERNEL_IMAGE_NAME := bzImage
BOARD_KERNEL_CMDLINE += quiet androidboot.hardware=me176c tsc=reliable
BOARD_KERNEL_CMDLINE += rfkill.default_state=0
BOARD_KERNEL_CMDLINE += ug31xx_battery.early=1
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware

#BOARD_SEPOLICY_DIRS += device/asus/$(TARGET_DEVICE)/sepolicy
# Uncomment this to set SELinux to permissive by default
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

TARGET_USES_64_BIT_BINDER := true

# Optimize for low RAM devices
MALLOC_SVELTE := true

# Treble
DEVICE_MANIFEST_FILE := $(TARGET_DEVICE_DIR)/manifest.xml
DEVICE_FRAMEWORK_MANIFEST_FILE += \
    system/libhidl/vintfdata/manifest_healthd_exclude.xml

# TODO: This isn't passing currently due to the missing Gatekeeper HAL
#PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_me176c

# Graphics
BOARD_KERNEL_CMDLINE += vga=current i915.modeset=1 i915.fastboot=1 i915.enable_fbc=1 drm.vblankoffdelay=1

# Display
TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 800

# Surfaceflinger
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000

# Mesa
BOARD_GPU_DRIVERS := i965

# Gralloc
BOARD_USES_MINIGBM := true
BOARD_USES_GRALLOC1 := true
INTEL_MINIGBM := external/minigbm

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Media
BUILD_WITH_FULL_STAGEFRIGHT := true
USE_MEDIASDK := true
BOARD_HAVE_MEDIASDK_OPEN_SOURCE := true
BOARD_HAVE_OMX_SRC := true
MFX_ENABLE_ITT_TRACES := false

# Sensors
USE_IIO_SENSOR_HAL := true
NO_IIO_EVENTS := true

# Thermal daemon
THERMALD_GENERATE_CONFIG := false
THERMALD_DETECT_THERMAL_ZONES := false
THERMALD_BACKLIGHT_COOLING_DEVICE := false

# WiFi
WIFI_DRIVER_SOCKET_IFACE := wlan0
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_brcmfmac
BOARD_HOSTAPD_DRIVER := NL80211

# Build pre-optimized to speed up initial boot
WITH_DEXPREOPT := true

# Set correct fingerprint in ZIP package
TARGET_RELEASETOOLS_EXTENSIONS := $(TARGET_DEVICE_DIR)

# Recovery
TARGET_RECOVERY_FSTAB := $(TARGET_DEVICE_DIR)/init/root/fstab.me176c
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# TWRP
ifeq ($(RECOVERY_VARIANT), twrp)
    # No need to compile kernel modules on TWRP
    TARGET_KERNEL_BUILD_MODULES := false

    # The ramdisk is too large to fit into the recovery partition
    # LZMA is slower, but compresses better to make it fit into the partition
    LZMA_RAMDISK_TARGETS := recovery

    # Include build date in TWRP version
    TW_DEVICE_VERSION := $(shell date -u +%Y-%m-%d)
    TW_USE_SERIALNO_PROPERTY_FOR_DEVICE_ID := true

    TW_THEME := portrait_hdpi
    TW_USE_TOOLBOX := true

    # Include/exclude some features
    TW_INCLUDE_CRYPTO := true
    TW_EXCLUDE_TWRPAPP := true

    # SD card is on internal storage
    BOARD_HAS_NO_REAL_SDCARD := true
    RECOVERY_SDCARD_ON_DATA := true

    # This is needed to get ADB working with USB configfs
    TW_EXCLUDE_DEFAULT_USB_INIT := true
    TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file"

    TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone6/temp

    # This is only needed for ancient updater binaries from older Android versions
    TW_NO_LEGACY_PROPS := true

    # See recovery/asus_updater/README.md
    ifneq ($(wildcard $(TARGET_DEVICE_DIR)/recovery/asus_updater/asus_updater),)
        TW_FORCE_CUSTOM_UPDATER := asus_updater
        TW_FORCE_CUSTOM_UPDATER_FINGERPRINT := asus/WW_K013/K013:5.0/
    else
        $(warning Building without custom ASUS updater binary. \
            You will not be able to flash the Android 5.0 stock firmware ZIPs from ASUS.\
            See recovery/asus_updater/README.md for details.)
    endif

    # Fix build error on LineageOS
    -include vendor/lineage/config/BoardConfigLineage.mk
endif

-include vendor/asus/$(TARGET_DEVICE)/BoardConfigVendor.mk
