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

Apache-2.0, see `LICENSE`. The files in `prebuilt/` are stock binaries; see `prebuilt/README.md`.
