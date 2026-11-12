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

Build: `lunch lineage_j706f-ap2a-userdebug`, then `m systemimage systemextimage productimage check-all-partition-sizes`. Use `lunch`, not `breakfast`: roomservice only looks for repositories in the LineageOS organization.

See the common tree's README for the current phase and the rules for contributors.

## Licence

Apache-2.0, see `LICENSE`.

## Kernel

No kernel is distributed in this tree. The stock kernel, DTBs and DTBO are GPL-2.0 binaries whose source has not been published, so PerleOS will only distribute a kernel built from source (later phase). Phase 1 builds `system`, `system_ext` and `product` only and keeps the stock `boot` and `dtbo` partitions, so it needs no kernel; `BoardConfig.mk` then sets `TARGET_NO_KERNEL`.

To build a boot image, extract the files from the stock `TB-J706F_S620150_211226_ROW` package into `prebuilt/` (ignored by git):

| File | From |
|---|---|
| `prebuilt/Image.gz` | `kernel` output of `unpack_bootimg --boot_img boot.img` (gzip, 15,182,558 bytes, sha256 `b0a9496a6b561d8ea436f2aba3696c743e4fd9b4a5f063911e4d7766ffe52813`) |
| `prebuilt/dtbs/00.dtb` | `dtb` output of the same command (the 16 concatenated FDT blobs, 3,268,415 bytes, sha256 `b6dc9a809cdaf70424516de05a4daa2cd5dc362fa285bf0f3281faa78a40c8ef`) |
| `prebuilt/dtbo.img` | `dtbo.img` of the package, unchanged (sha256 `e17c01b90428851f7e088c889b052327b228a12f94a6d036f39f54baef25354c`) |

Never use files from another model or another firmware release: the 38 kernel modules of the stock `vendor` are built against this kernel (`vermagic 4.14.190-perf+`).
