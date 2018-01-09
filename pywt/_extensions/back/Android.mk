LOCAL_PATH:=$(call my-dir)
BUILDOZER_PATH:=/home/jeroen/python/myproject/sec_project/project/.buildozer
COMMON_CFLAGS:=$(BUILDOZER_PATH)/android/platform/build/dists/myapp/private/lib/python2.7/site-packages/numpy/core/include/
COMMON_C_INCLUDES := $(BUILDOZER_PATH)/android/platform/build/dists/myapp/python-install/include/python2.7/
COMMON_C_INCLUDES += c/
COMMON_SRC_FILES := c/common.c \
			c/convolution.c \
			c/wt.c \
			c/wavelets.c \
			c/cwt.c



include $(CLEAR_VARS)  
LOCAL_MODULE := libpython2.7
LOCAL_SRC_FILES := libpython2.7.so
LOCAL_EXPORT_C_INCLUDES := $(BUILDOZER_PATH)/android/platform/build/dists/myapp/python-install/include/python2.7/
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := _cwt
LOCAL_SRC_FILES :=  _cwt.c
LOCAL_SRC_FILES += $(COMMON_SRC_FILES)

LOCAL_CFLAGS := -I$(COMMON_CFLAGS)
LOCAL_C_INCLUDES := $(COMMON_C_INCLUDES)
LOCAL_SHARED_LIBRARIES := libpython2.7
#LOCAL_SHARED_LIBRARIES += libc_wt
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := _swt
LOCAL_SRC_FILES :=  _swt.c
LOCAL_SRC_FILES += $(COMMON_SRC_FILES)

LOCAL_CFLAGS := -I$(COMMON_CFLAGS)
LOCAL_C_INCLUDES := $(COMMON_C_INCLUDES)
LOCAL_SHARED_LIBRARIES := libpython2.7
#LOCAL_SHARED_LIBRARIES += libc_wt
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := _dwt
LOCAL_SRC_FILES :=  _dwt.c
LOCAL_SRC_FILES += $(COMMON_SRC_FILES)

LOCAL_CFLAGS := -I$(COMMON_CFLAGS)
LOCAL_C_INCLUDES := $(COMMON_C_INCLUDES)
LOCAL_SHARED_LIBRARIES := libpython2.7
#LOCAL_SHARED_LIBRARIES += libc_wt
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := _pywt
LOCAL_SRC_FILES :=  _pywt.c
LOCAL_SRC_FILES += $(COMMON_SRC_FILES)

LOCAL_CFLAGS := -I$(COMMON_CFLAGS)
LOCAL_C_INCLUDES := $(COMMON_C_INCLUDES)
LOCAL_SHARED_LIBRARIES := libpython2.7
#LOCAL_SHARED_LIBRARIES += libc_wt
include $(BUILD_SHARED_LIBRARY)
