LOCAL_PATH := $(call my-dir)

LOCAL_STATIC_LIBRARIES := libfuse

include \
	$(LOCAL_PATH)/fuse/Android.mk \
	$(LOCAL_PATH)/exfat/Android.mk \
