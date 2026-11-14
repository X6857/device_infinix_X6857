
#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_PRODUCT_PROPERTIES += \
persist.vendor.power.adpf.enable=true \
ro.vendor.powerhal.adpf.enable=true

# Inherit LineageOS common config
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# GPU
GPU_FREQS_PATH := /sys/devices/platform/13000000.mali/devfreq/available_frequencies
GPU_MIN_FREQ_PATH := /sys/devices/platform/13000000.mali/devfreq/min_freq

# Inherit from X6857 device
$(call inherit-product, device/infinix/X6857/device.mk)

PRODUCT_NAME := lineage_X6857
PRODUCT_DEVICE := X6857
PRODUCT_BRAND := Infinix
PRODUCT_MANUFACTURER := Infinix
PRODUCT_MODEL := Infinix X6857

PRODUCT_GMS_CLIENTID_BASE := android-transsion

DEVICE_CODENAME := X6857

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Infinix-X6857 16 BP2A.250605.031.A3 201400022 release-keys" \
    BuildFingerprint=Infinix/X6857-OP/Infinix-X6857:16/BP2A.250605.031.A3/201400022:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)
