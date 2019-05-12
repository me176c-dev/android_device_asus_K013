#!/usr/bin/env bash
# Script used to build the public releases
set -euo pipefail
DEVICE_DIR=device/asus/K013
RELEASE_DIR="$(dirname "$(readlink -f "$0")")"
. "$RELEASE_DIR/common.sh"

repo sync --detach --force-sync
status=$(repo status -q)
if [[ "$status" ]]; then
    echo "ERROR: Build tree not clean:"
    echo "$status"
    exit 1
fi

# Remove existing output directory
rm -rf out

# Store manifest with current revisions before patching
repo manifest -r -o manifest.xml

# Create tags
tag_repos git tag -sm "$TAG_MESSAGE" "$TAG"

# Apply patches
"$DEVICE_DIR"/patches/apply.sh aosp

patch_lineage() {
    . "$DEVICE_DIR"/patches/signature-spoofing/apply.sh

    cd kernel/me176c
    git clean -dxf
    # Hide git revision from kernel version (will be random due to WireGuard)
    touch .scmversion

    cd "$DIR"
    "$DEVICE_DIR"/patches/wireguard/patch-kernel.sh kernel/me176c
}
patch_twrp() {
    "$DEVICE_DIR"/twrp-checkout.sh
}
patch_$TYPE

# Build
"$RELEASE_DIR"/build.sh "$TYPE" "${TYPE}_$PRODUCT-$BUILD_VARIANT" "${TARGETS[@]}"

release_lineage() {
    mv signed-target_files.zip "target-files.$ARTIFACT"
    mv signed-ota_update.zip "$ARTIFACT"
}
release_twrp() {
    mv recovery.img "$ARTIFACT"
}
release_$TYPE

# Push tags
ssh-add
tag_repos git push "$PRODUCT" "$TAG"

cd "$DEVICE_DIR"
hub release create -d -m "$TITLE $VERSION ($DATE_DASHED)" \
     -a "$DIR/$ARTIFACT" -a "$DIR/manifest.xml" "$TAG"
