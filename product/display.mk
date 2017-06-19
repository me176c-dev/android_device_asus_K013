TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 800

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Screen density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=213

# Property to choose between virtual/external wfd display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.wfd.virtual=0

# Light HAL
PRODUCT_PACKAGES += \
    lights.me176c
