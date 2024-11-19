#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from NX721J device
$(call inherit-product, device/nubia/nx721j/device.mk)

# Inherit common SoC device configs
$(call inherit-product, device/nubia/sm8650-common/pineapple.mk)

PRODUCT_DEVICE := nx721j
PRODUCT_NAME := lineage_nx721j
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX721J
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-nubia
BUILD_FINGERPRINT :=

# Get non-open-source specific aspects
$(call inherit-product, vendor/nubia/nx721j/nx721j-vendor.mk)
