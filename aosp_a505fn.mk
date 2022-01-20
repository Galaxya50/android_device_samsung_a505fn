#
# Copyright (C) 2020-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Inherit from a505fn device
$(call inherit-product, device/samsung/a505fn/device.mk)

## Boot Animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

## Inherit some common AOSP stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier, this must come after all inclusions
PRODUCT_DEVICE := a505fn
PRODUCT_NAME := aosp_a505fn
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A505FN
PRODUCT_MANUFACTURER := samsung
PRODUCT_SHIPPING_API_LEVEL := 28

PRODUCT_GMS_CLIENTID_BASE := android-samsung

## Use the latest CTS approved build identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=a50 \
    PRODUCT_NAME=a50xx \
    PRIVATE_BUILD_DESC="a50xx-user 11 RP1A.200720.012 A505FNXXS9CUJ1 release-keys"

BUILD_FINGERPRINT := samsung/a50xx/a50:11/RP1A.200720.012/A505FNXXS9CUJ1:user/release-keys
