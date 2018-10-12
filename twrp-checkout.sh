#!/bin/bash
set -e

if [ -z "$ANDROID_BUILD_TOP" ]; then
    echo "Please run 'source build/envsetup.sh' before running this script."
    exit 1
fi

cd "$ANDROID_BUILD_TOP/bootable/recovery"
git remote add me176c-twrp https://github.com/me176c-dev/android_bootable_recovery_twrp 2>/dev/null || :
git fetch me176c-twrp android-9.0
git checkout me176c-twrp/android-9.0

cd "$ANDROID_BUILD_TOP/system/core"
git remote add me176c https://github.com/me176c-dev/android_system_core 2>/dev/null || :
git fetch me176c twrp-9.0
git cherry-pick me176c/twrp-9.0
