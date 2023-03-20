#
# Copyright (C) 2023 The StagOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common StagOS stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/stag/main.mk)
BUILD_TYPE := OFFICIAL

# Enable UDFPS icons & animations
EXTRA_UDFPS_ANIMATIONS := true

# Inherit device configuration
$(call inherit-product, device/google/bluejay/aosp_bluejay.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, device/google/bluejay/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6a
PRODUCT_NAME := stag_bluejay

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 13 TQ2A.230305.008.E1 9677224 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:13/TQ2A.230305.008.E1/9677224:user/release-keys

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)
