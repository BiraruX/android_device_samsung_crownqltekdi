#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from crownqltekdi device
$(call inherit-product, device/samsung/crownqltekdi/device.mk)

PRODUCT_DEVICE := crownqltekdi
PRODUCT_NAME := twrp_crownqltekdi
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy Note 9
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="crownqltekdi-user 10 QP1A.190711.020 SCV40KDS1CVK1 release-keys"

BUILD_FINGERPRINT := KDDI/SCV40_jp_kdi/SCV40:10/QP1A.190711.020/SCV40KDS1CVK1:user/release-keys
