#!/bin/bash
set -e

git -C bootable/recovery remote add me176c-twrp https://github.com/me176c-dev/android_bootable_recovery_twrp 2>/dev/null || :
git -C bootable/recovery fetch me176c-twrp android-9.0
git -C bootable/recovery checkout me176c-twrp/android-9.0

git -C system/core remote add me176c https://github.com/me176c-dev/android_system_core 2>/dev/null || :
git -C system/core fetch me176c twrp-9.0
git -C system/core cherry-pick me176c/twrp-9.0
