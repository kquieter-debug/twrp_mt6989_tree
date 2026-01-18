#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk) 

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk) 

# Device specific configs
$(call inherit-product, device/realme/RE6022L1/device.mk)

# Device identifier
PRODUCT_DEVICE := RE6022L1
PRODUCT_NAME := twrp_RE6022L1
PRODUCT_BRAND := Realme
PRODUCT_MODEL := RE6022L1
PRODUCT_MANUFACTURER := Realme

PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true 