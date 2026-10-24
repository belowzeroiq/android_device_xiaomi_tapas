#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tapas device
$(call inherit-product, device/xiaomi/tapas/device.mk)

# Disable EPPE for AxionOS
TARGET_DISABLE_EPPE := true

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)


PRODUCT_NAME := lineage_tapas
PRODUCT_DEVICE := tapas
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 4G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tapas_global-user 15 AQ3A.240829.003 OS2.0.207.0.VMTMIXM release-keys" \
    BuildFingerprint=Redmi/tapas_global/tapas:15/AQ3A.240829.003/OS2.0.207.0.VMTMIXM:user/release-keys \
    DeviceProduct=tapas

# Axion Stuff
TARGET_ENABLE_BLUR := false
TARGET_INCLUDE_AXFX := false
AXION_CAMERA_REAR_INFO := 50,8,2
AXION_CAMERA_FRONT_INFO := 13
AXION_MAINTAINER := belowzeroiq
AXION_PROCESSOR := Snapdragon_685

# Bypass charging
BYPASS_CHARGE_SUPPORTED ?= false

# Firmware / Axion flags
TARGET_DISABLES_LIBPERF ?= false

# High Brightness Mode (HBM)
HBM_SUPPORTED := false
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode

# Doze
TARGET_NEEDS_DOZE_FIX := false
TARGET_DOZE_TAP_PULSE_SUPPORTED ?= false
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED ?= false
TARGET_DOZE_PICKUP_PULSE_SUPPORTED ?= false
TARGET_DOZE_SIDE_FPS_PULSE_SUPPORTED ?= false
