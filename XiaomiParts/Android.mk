#
# Copyright (C) 2017-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := XiaomiParts
LOCAL_CERTIFICATE := platform
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_PRIVILEGED_MODULE := true

LOCAL_USE_AAPT2 := true

LOCAL_STATIC_ANDROID_LIBRARIES := \
    androidx.core_core \
    androidx.preference_preference

LOCAL_STATIC_JAVA_LIBRARIES := \
    vendor.xiaomi.hardware.displayfeature-V1.0-java \
    vendor.xiaomi.hardware.motor-V1.0-java

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res \
    $(LOCAL_PATH)/xres

LOCAL_PROGUARD_ENABLED := disabled

include $(BUILD_PACKAGE)
