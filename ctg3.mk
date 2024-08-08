#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ctg3 device
$(call inherit-product, device/iflytek/ctg3/device.mk)

PRODUCT_DEVICE := ctg3
PRODUCT_NAME := ctg3
PRODUCT_BRAND := iflytek
PRODUCT_MODEL := ctg3
PRODUCT_MANUFACTURER := iflytek

PRODUCT_GMS_CLIENTID_BASE := android-iflytek

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ctg3-user 12 SQ3A.220605.009.B1 eng..20230818.115746 release-keys"

BUILD_FINGERPRINT := iFLYTEK/ctg3/ctg3:12/SQ3A.220605.009.B1/eng..20230818.115746:user/release-keys
