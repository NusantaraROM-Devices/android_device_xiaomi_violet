#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2023 The NusantaraProject Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common NusantaraProject stuff
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

# MiuiCamera
$(call inherit-product, vendor/MiuiCamera/config.mk)

# Extra Flags
NAD_BUILD_TYPE := OFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Charging Animation
USE_PIXEL_CHARGING := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := nad_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="violet"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_INCLUDE_APERTURE_CAMERA ?= false
