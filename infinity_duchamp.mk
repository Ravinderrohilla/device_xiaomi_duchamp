#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/duchamp/device.mk)

# Inherit some common Infinity-X stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Infinity-X Flags
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := SaiKrishna
TARGET_SUPPORTS_BLUR := true
TARGET_HAS_UDFPS := true
WITH_GAPPS := true

# Device identifier
PRODUCT_NAME := infinity_duchamp
PRODUCT_DEVICE := duchamp
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2311DRK48G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="duchamp_global-user 14 UP1A.230905.011 V816.0.12.0.UNLMIXM release-keys" \
    DeviceProduct=duchamp_global \
    SystemName=duchamp_global

BUILD_FINGERPRINT := POCO/duchamp_global/duchamp:14/UP1A.230905.011/V816.0.12.0.UNLMIXM:user/release-keys
