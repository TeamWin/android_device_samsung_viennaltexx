$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/viennaltexx/overlay

LOCAL_PATH := device/samsung/viennaltexx
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/file_contexts:recovery/root/prebuilt_file_contexts \
	$(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab \
	$(LOCAL_PATH)/init.recovery.qcom.rc:root/init.recovery.qcom.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := omni_viennaltexx
PRODUCT_DEVICE := viennaltexx
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := viennaltexx
