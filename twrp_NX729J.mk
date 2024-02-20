#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from NX769J device
$(call inherit-product, device/nubia/NX729J/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := NX729J
PRODUCT_NAME := twrp_NX729J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX729J
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := 

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX729J-UN-user 13 TKQ1.221220.001 20231009.123923 release-keys"

BUILD_FINGERPRINT := nubia/NX729J-UN/NX729J-UN:13/TKQ1.221220.001/20231009.123923:user/release-keys
