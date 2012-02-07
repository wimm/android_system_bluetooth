ifeq ($(BOARD_HAVE_BLUETOOTH_BCM),true)

LOCAL_PATH:= $(call my-dir)

#
# brcm_patchram_plus.c
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES := brcm_patchram_plus.c

LOCAL_MODULE := brcm_patchram_plus

LOCAL_C_FLAGS := \
	-DANDROID

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	liblog \
	libhardware_legacy

include $(BUILD_EXECUTABLE)

endif
