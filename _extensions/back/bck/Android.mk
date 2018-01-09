LOCAL_PATH:=$(call my-dir)

LOCAL_CFLAGS_ALL := -I$(LOCAL_PATH)/../../../.buildozer/android/platform/build/dists/myapp/libs/armeabi-v7a/
LOCAL_CFLAGS_ALL += -I$(LOCAL_PATH)/../../../.buildozer/android/platform/build/dists/myapp/python-install/include/python2.7
LOCAL_CFLAGS_ALL += -I$(LOCAL_PATH)/../../../.buildozer/android/platform/build/dists/myapp/private/lib/python2.7/site-packages/numpy/core/include/
LOCAL_CFLAGS_ALL += -I$(LOCAL_PATJ)/c/
LOCAL_CFLAGS_ALL += -Wcpp
LOCAL_CFLAGS_ALL += -Wformat


LOCAL_LDFLAGS_ALL := -L$(LOCAL_PATH)/../../../.buildozer/android/platform/build/dists/myapp/libs/armeabi-v7a

LOCAL_LDFLAGS_ALL += -fuse-ld=bfd
#LOCAL_LDFLAGS_ALL += -L
#LOCAL_SHARED_LIBRARIES_COMMON := -lpython2.7
LOCAL_SHARED_LIBRARIES_COMMON := $(LOCAL_PATH)/../../../.buildozer/android/platform/build/dists/myapp/libs/armeabi-v7a/libpython2.7.so
LOCAL_SHARED_LIBRARIES_COMMON := $(LOCAL_PATH)/c/libs/armeabi/libc_wt.so

LOCAL_LDLIBS_COMMON := -llog -fPIC -shared -Wl
#,--unresolved-symbols=ignore-all
LOCAL_C_INCLUDES_COMMON := $(LOCAL_PATH)/c/
LOCAL_C_INCLUDES_COMMON += $(LOCAL_PATH)/
LOCAL_C_INCLUDES_COMMON += $(LOCAL_PATH)/../../../.buildozer/android/platform/build/dists/myapp/python-install/include/python2.7/


LOCAL_STATIC_LIBRARIES_COMMON := -L$(LOCAL_PATH)/c/libs/armeabi/libc_wt.so
LOCAL_STATIC_LIBRARIES_COMMON += -L$(LOCAL_PATH)/../../../.buildozer/android/platform/build/dists/myapp/libs/armeabi-v7a/libpython2.7.so


include $(CLEAR_VARS)
#LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
LOCAL_MODULE    := _cwt
LOCAL_SRC_FILES :=  _cwt.c
LOCAL_SRC_FILES += $(LOCAL_SHARED_LIBRARIES_COMMON)
# Build

LOCAL_C_INCLUDES := $(LOCAL_C_INCLUDES_COMMON)


LOCAL_CFLAGS := $(LOCAL_CFLAGS_ALL)
LOCAL_LDFLAGS := $(LOCAL_LDFLAGS_ALL)

LOCAL_LDLIBS := $(LOCAL_LDLIBS_COMMON)             # This line links to the Android log
LOCAL_SHARED_LIBRARIES := libpython2.7
LOCAL_SHARED_LIBRARIES += libc_wt
LOCAL_STATIC_LIBRARIES := libpython2.7, libc_wt

#include $(PREBUILT_STATIC_LIBRARY)
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
LOCAL_MODULE    := _pywt
LOCAL_SRC_FILES :=  _pywt.c


# Build
LOCAL_CFLAGS := $(LOCAL_CFLAGS_ALL)
LOCAL_LDFLAGS += $(LOCAL_LDFLAGS_ALL)
LOCAL_SHARED_LIBRARIES += $(LOCAL_SHARED_LIBRARIES_COMMON)  # This line links to libpython2.7
LOCAL_LDLIBS += $(LOCAL_LDLIBS_COMMON)             # This line links to the Android log
LOCAL_C_INCLUDES := $(LOCAL_C_INCLUDES_COMMON)
LOCAL_STATIC_LIBRARIES := $(LOCAL_STATIC_LIBRARIES_COMMON)

include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
LOCAL_MODULE    := _dwt
LOCAL_SRC_FILES :=  _dwt.c
# Build
LOCAL_CFLAGS := $(LOCAL_CFLAGS_ALL)
LOCAL_LDFLAGS += $(LOCAL_LDFLAGS_ALL)
LOCAL_SHARED_LIBRARIES += $(LOCAL_SHARED_LIBRARIES_COMMON)  # This line links to libpython2.7
LOCAL_LDLIBS += $(LOCAL_LDLIBS_COMMON)             # This line links to the Android log
LOCAL_C_INCLUDES := $(LOCAL_C_INCLUDES_COMMON)
LOCAL_STATIC_LIBRARIES := $(LOCAL_STATIC_LIBRARIES_COMMON)

include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
LOCAL_MODULE    := _swt
LOCAL_SRC_FILES :=  _swt.c
# Build
LOCAL_CFLAGS := $(LOCAL_CFLAGS_ALL)
LOCAL_LDFLAGS += $(LOCAL_LDFLAGS_ALL)
LOCAL_SHARED_LIBRARIES += $(LOCAL_SHARED_LIBRARIES_COMMON)  # This line links to libpython2.7
LOCAL_LDLIBS += $(LOCAL_LDLIBS_COMMON)             # This line links to the Android log  
LOCAL_C_INCLUDES := $(LOCAL_C_INCLUDES_COMMON)
LOCAL_STATIC_LIBRARIES := $(LOCAL_STATIC_LIBRARIES_COMMON)


include $(BUILD_SHARED_LIBRARY)


