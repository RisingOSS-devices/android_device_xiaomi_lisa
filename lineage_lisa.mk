#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lisa device
$(call inherit-product, device/xiaomi/lisa/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lisa
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2109119DG
PRODUCT_NAME := lineage_lisa

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_NAME := lisa_global
PRODUCT_SYSTEM_DEVICE := lisa

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lisa_global-user 13 TKQ1.220829.002 V14.0.4.0.TKOMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/lisa_global/lisa:13/TKQ1.220829.002/V14.0.4.0.TKOMIXM:user/release-keys

# Rising stuff
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := false

# Some GMS flags
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := false
