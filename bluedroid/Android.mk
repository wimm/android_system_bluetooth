#
# libbluedroid
#

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	bluetooth.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include \
	system/bluetooth/bluez-clean-headers

# Isaac 20110625 begin: for different rfkill support
ifeq ($(RFKILL_NORMAL),true)
LOCAL_CFLAGS += -DRFKILL_NORMAL
endif
# Isaac 20110625 end: for different rfkill support

# Isaac 20110629 begin: wait a moment for BT power to be enabled
ifdef BCM4329_BT_POWER_DELAY
LOCAL_CFLAGS += -DBT_POWER_DELAY=$(BCM4329_BT_POWER_DELAY)
endif
# Isaac 20110629 end: wait a moment for BT power to be enabled

# Isaac 20110629 begin: Increase retry time for loading bcm4329 firmware
ifdef BCM4329_FIRMWARE_CONSUME
LOCAL_CFLAGS += -DBCM4329_FIRMWARE_CONSUME=$(BCM4329_FIRMWARE_CONSUME)
endif
# Isaac 20110629 end: Increase retry time for loading bcm4329 firmware

LOCAL_SHARED_LIBRARIES := \
	libcutils

LOCAL_MODULE := libbluedroid

include $(BUILD_SHARED_LIBRARY)
