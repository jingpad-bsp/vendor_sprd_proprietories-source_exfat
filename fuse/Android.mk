# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS := -Wall -O2 -std=c99

LOCAL_SRC_FILES := \
	buffer.c \
	cuse_lowlevel.c \
	fuse.c \
	fuse_kern_chan.c \
	fuse_loop.c \
	fuse_loop_mt.c \
	fuse_lowlevel.c \
	fuse_mt.c fuse_opt.c \
	fuse_session.c \
	fuse_signals.c \
	helper.c \
	mount.c \
	mount_util.c \
	ulockmgr.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include

LOCAL_SHARED_LIBRARIES := \
	libutils libdl

LOCAL_CFLAGS := \
	-D_FILE_OFFSET_BITS=64 \
	-DFUSE_USE_VERSION=26

LOCAL_MODULE := libfuse_static
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)