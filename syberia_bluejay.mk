#
# Copyright (C) 2023 The Derpfest Project
#
# SPDX-License-Identifier: Apache-2.0
#


TARGET_DISABLE_EPPE := true

$(call inherit-product, vendor/syberia/common.mk) 

TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false

TARGET_BOOT_ANIMATION_RES := 1080
EXTRA_UDFPS_ANIMATIONS := true
USE_LEGACY_BOOTANIMATION := true

# Enable quick tap
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit device configuration
$(call inherit-product, device/google/bluejay/aosp_bluejay.mk)
$(call inherit-product, device/google/gs101/syberia_common.mk)
$(call inherit-product, device/google/bluejay/device-syberia.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6a
PRODUCT_NAME := syberia_bluejay

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 13 TQ3A.230901.001 10750268 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:13/TQ3A.230901.001/10750268:user/release-keys

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)
