#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from cypfr device
$(call inherit-product, device/motorola/cypfr/device.mk)

PRODUCT_DEVICE := cypfr
PRODUCT_NAME := twrp_cypfr
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g52j 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cypfr_g-user 11 S3RYBS32.168-19-5-3 3d494 release-keys"

BUILD_FINGERPRINT := motorola/cypfr_g/cypfr:11/S3RYBS32.168-19-5-3/3d494:user/release-keys
