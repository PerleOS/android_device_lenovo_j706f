<!--
SPDX-FileCopyrightText: The PerleOS Project
SPDX-License-Identifier: Apache-2.0
-->

# Lenovo Tab P11 Pro TB-J706F (j706f)

PerleOS device tree for the Lenovo Tab P11 Pro TB-J706F (Wi-Fi, ROW), based on LineageOS 21 (`lineage-21.0`). It is not affiliated with Lenovo or LineageOS.

| | |
|---|---|
| SoC | Qualcomm SM7150 (Snapdragon 730G), platform `sm6150` |
| Stock firmware base | `TB-J706F_S620150_211226_ROW` |
| Common tree | [`android_device_lenovo_pearl-common`](https://github.com/PerleOS/android_device_lenovo_pearl-common) |

Build: `lunch lineage_j706f-ap2a-user` (or `-userdebug` for debugging), then `m bootimage systemimage systemextimage productimage check-all-partition-sizes`. Use `lunch`, not `breakfast`: roomservice only looks for repositories in the LineageOS organization.

See the common tree's README for the current phase and the rules for contributors.

## Licence

Apache-2.0, see `LICENSE`.

## Kernel

The kernel is built from source: [`android_kernel_lenovo_sm6150`](https://github.com/PerleOS/android_kernel_lenovo_sm6150) at `kernel/lenovo/sm6150` (listed in `local_manifests`), with `vendor/pearl_row_wifi-perf_defconfig`, the savedefconfig of the stock S620150 kernel. It is built like the stock kernel (clang, GNU binutils 2.27) and keeps the stock module ABI, so the 38 kernel modules of the stock `vendor` load unchanged (`vermagic 4.14.190-perf+`, same symbol CRCs). `boot.img` holds the kernel, the `sdmmagpie` and `sdmmagpiep` base DTBs (equal to the stock ones) and the LineageOS ramdisk with the stock first-stage fstab as `fstab.default`. The stock `dtbo` partition is kept; no DTBO is built.

`boot.img` keeps the stock OS version and patch level (11.0.0, 2021-12): Keymaster only moves the patch level forward, so a later date would make a return to the stock boot image lose the keys bound to it.

A return to the stock boot image also needs the stock `system`, `system_ext` and `product`: the PerleOS system images do not boot on the stock kernel (see the `pearl-common` README).

Never use files from another model or another firmware release.
