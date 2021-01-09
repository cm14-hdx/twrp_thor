PRODUCT_COPY_FILES += \
    device/amazon/thor/recovery.fstab:recovery/root/recovery.fstab

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# DTB Tool
PRODUCT_PACKAGES += \
	dtbTool

PRODUCT_NAME := omni_thor
PRODUCT_DEVICE := thor
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := amazon
