ifeq ($(BOARD_HAVE_BLUETOOTH_BCM),true)

LOCAL_PATH:= $(call my-dir)

#
# brcm_patchram_plus.c
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := brcm_patchram_plus.c

LOCAL_MODULE := brcm_patchram_plus

# liuyuqiang 20100910 begin: add library for function used to get MAC address
#LOCAL_SHARED_LIBRARIES := libcutils
LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libhardware_legacy
# liuyuqiang 20100910 end: add library for function used to get MAC address

include $(BUILD_EXECUTABLE)

endif
