#
# SPDX-FileCopyrightText: The PerleOS Project
# SPDX-License-Identifier: Apache-2.0
#

-include device/lenovo/pearl-common/BoardConfigCommon.mk

DEVICE_PATH := device/lenovo/j706f

TARGET_OTA_ASSERT_DEVICE := j706f,J706F

# Kernel: no kernel source is in the tree yet, and the stock kernel, DTBs and DTBO are GPL-2.0
# binaries whose source is not published, so they are not distributed. Phase 1 keeps the stock
# boot and dtbo partitions and builds no boot image. To build one, extract them from the stock
# S620150 boot.img and dtbo.img into prebuilt/ (see README.md); LineageOS kernel.mk then uses
# TARGET_PREBUILT_KERNEL directly.
ifneq ($(wildcard $(DEVICE_PATH)/prebuilt/Image.gz),)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtbs
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
else
TARGET_NO_KERNEL := true
endif
