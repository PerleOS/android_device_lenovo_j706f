#
# SPDX-FileCopyrightText: The PerleOS Project
# SPDX-License-Identifier: Apache-2.0
#

include device/lenovo/pearl-common/BoardConfigCommon.mk

DEVICE_PATH := device/lenovo/j706f

TARGET_OTA_ASSERT_DEVICE := j706f,J706F

# Kernel: built from kernel/lenovo/sm6150 (PerleOS/android_kernel_lenovo_sm6150) with the
# defconfig regenerated from the stock S620150 kernel. The stock dtbo partition is kept.
TARGET_KERNEL_SOURCE := kernel/lenovo/sm6150
TARGET_KERNEL_CONFIG := vendor/pearl_row_wifi-perf_defconfig
