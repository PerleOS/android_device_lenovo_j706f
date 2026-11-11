#
# SPDX-FileCopyrightText: The PerleOS Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/lenovo/pearl-common/pearl.mk)

PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Proprietary files (only used once the vendor partition is built)
$(call inherit-product-if-exists, vendor/lenovo/j706f/j706f-vendor.mk)
