LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := AudioClass.xml
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_RELATIVE_PATH := parameter-framework/Structure/Audio
LOCAL_REQUIRED_MODULES := \
    SstSubsystem.xml \
    RT5640Subsystem.xml \
    BytCRSubsystem.xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := SstSubsystem.xml
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_RELATIVE_PATH := parameter-framework/Structure/Audio
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := RT5640Subsystem.xml
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_RELATIVE_PATH := parameter-framework/Structure/Audio
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := BytCRSubsystem.xml
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_RELATIVE_PATH := parameter-framework/Structure/Audio
include $(BUILD_PREBUILT)
