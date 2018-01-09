LOCAL_PATH:=$(call my-dir)

#
include $(CLEAR_VARS)

LOCAL_MODULE    := c_wt
LOCAL_SRC_FILES := common.c \ convolution.c \ wt.c \ wavelets.c \ cwt.c



# Build
LOCAL_CFLAGS := -I $(LOCAL_PATH)/../../../../.buildozer/android/platform/build/dists/myapp/python-install/include/python2.7/
#LOCAL_CFLAGS += -I $(LOCAL_PATH)/../../../../.buildozer/android/platform/build/build/other_builds/numpy/armeabi/numpy/numpy/core/include/
LOCAL_LDFLAGS += -L $(LOCAL_PATH)/../../../../.buildozer/android/platform/build/dists/myapp/libs/armeabi
LOCAL_SHARED_LIBRARIES += python2.7  # This line links to libpython2.7
LOCAL_LDLIBS += -llog             # This line links to the Android log

include $(BUILD_SHARED_LIBRARY)
