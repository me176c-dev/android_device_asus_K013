BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true

TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true

TW_EXCLUDE_DEFAULT_USB_INIT := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file"

TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone6/temp

TW_NO_LEGACY_PROPS := true

TARGET_RECOVERY_UPDATER_LIBS += libasus_updater
TW_FORCE_DEFAULT_UPDATER_FINGERPRINT := asus/WW_K013/K013:5.0/
