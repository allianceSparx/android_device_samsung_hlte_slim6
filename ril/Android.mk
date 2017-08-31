LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := ril_shim.c

LOCAL_SHARED_LIBRARIES := liblog libcutils libbinder libutils

LOCAL_MODULE := libshim_ril

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := liblog libcutils libutils

LOCAL_SRC_FILES := \
    rmt_storage_shim.c

LOCAL_MODULE := librmt_shim
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)
