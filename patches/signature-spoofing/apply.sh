#!/usr/bin/env bash
git -C frameworks/base am ../../device/asus/K013/patches/signature-spoofing/frameworks_base-{signature_spoofing,location_providers}.patch || return

echo "Setting PATCH_SIGNATURE_SPOOFING=true"
export PATCH_SIGNATURE_SPOOFING=true
