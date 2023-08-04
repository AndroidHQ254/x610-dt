#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from Infinix Note 6 device
$(call inherit-product, device/infinix/x610/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := x610
PRODUCT_NAME := lineage_x610
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Note 6
PRODUCT_MANUFACTURER := Infinix

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_GMS_CLIENTID_BASE := android-transsion-infinix-rev1
TARGET_VENDOR := infinix
TARGET_VENDOR_PRODUCT_NAME := x610

PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_x610_h651-user 9 PPR1.180610.011 31055 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Infinix/H651B/Infinix-X610:9/PPR1.180610.011/AB-200805V370:user/release-keys
