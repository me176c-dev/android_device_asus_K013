LOCAL_PATH := $(call my-dir)

PFW_CORE := external/parameter-framework
BUILD_PFW_SETTINGS := $(PFW_CORE)/support/android/build_pfw_settings.mk
PFW_DEFAULT_SCHEMAS_DIR := $(PFW_CORE)/upstream/schemas
PFW_SCHEMAS_DIR := $(PFW_DEFAULT_SCHEMAS_DIR)

include $(CLEAR_VARS)
LOCAL_MODULE := AudioParameterFramework.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_RELATIVE_PATH := parameter-framework
LOCAL_REQUIRED_MODULES := \
    AudioConfigurableDomains.xml \
    AudioClass.xml \
    libtinyalsa-subsystem
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := AudioConfigurableDomains.xml
LOCAL_MODULE_RELATIVE_PATH := parameter-framework/Settings/Audio

PFW_TOPLEVEL_FILE := $(LOCAL_PATH)/AudioParameterFramework.xml
PFW_CRITERIA_FILE := $(LOCAL_PATH)/AudioCriteria.txt
PFW_EDD_FILES := \
    $(LOCAL_PATH)/Settings/Audio/routing_sst.pfw \
    $(LOCAL_PATH)/Settings/Audio/routing_rt5640.pfw \
    $(LOCAL_PATH)/Settings/Audio/routing_bytcr.pfw
LOCAL_ADDITIONAL_DEPENDENCIES := $(PFW_EDD_FILES)
include $(BUILD_PFW_SETTINGS)

include $(LOCAL_PATH)/Structure/Audio/Android.mk
