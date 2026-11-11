#
# SPDX-FileCopyrightText: The PerleOS Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/lenovo/j706f/device.mk)
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

PRODUCT_DEVICE := j706f
PRODUCT_NAME := lineage_j706f
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-J706F
PRODUCT_MANUFACTURER := LENOVO

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
