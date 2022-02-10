LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fsck.exfat
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS = -D_FILE_OFFSET_BITS=64 -Wno-sign-compare -Wno-unused-parameter
LOCAL_SRC_FILES = main.c
LOCAL_SHARED_LIBRARIES := libexfat
LOCAL_STATIC_LIBRARIES := libfuse_static
LOCAL_C_INCLUDES += $(LOCAL_PATH) \
					$(LOCAL_PATH)/../libexfat \
					$(LOCAL_PATH)/../../fuse/include
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := libexfat_fsck_static
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS = -D_FILE_OFFSET_BITS=64 -Dmain=fsck_exfat_main
LOCAL_SRC_FILES = main.c
LOCAL_C_INCLUDES += $(LOCAL_PATH) \
					$(LOCAL_PATH)/../libexfat \
					$(LOCAL_PATH)/../../fuse/include \
LOCAL_STATIC_LIBRARIES := libfuse_static libexfat_static
include $(BUILD_STATIC_LIBRARY)
