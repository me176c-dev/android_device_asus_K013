#!/usr/bin/env bash
set -e  # Fail on error

cd `dirname "$0"`

MAIN_DIR="$PWD"
AOSP_DIR="$MAIN_DIR/aosp-7.1-updater"
MANIFEST_GIT_DIR=".manifest"
REPO_TOOL=".repo/repo/repo"

mkdir -p "$AOSP_DIR"
cd "$AOSP_DIR"

if [ ! -d .manifest ]; then
    mkdir .manifest && cd .manifest
    git init
    ln -s "$AOSP_DIR.xml" default.xml
    git add -A && git commit -m "Initial Commit"
    cd ..
fi

if [ ! -d .repo ]; then
    mkdir .repo

    # Find existing repo dir
    REPO_DIR=$(while [[ "$PWD" != "/" ]]; do
        [[ -f ".repo/repo/repo" ]] && { pwd; break; } || cd ..
    done)
    if [[ "$REPO_DIR" ]]; then ln -s "$REPO_DIR/.repo/repo" .repo/repo; fi
fi

repo init -u .manifest --depth 1
repo sync --force-sync --detach --no-clone-bundle

# This avoids having to sync prebuilts/sdk
rm -f prebuilts/misc/common/android-support-test/Android.mk

# Link device directory
ln -sfn "$MAIN_DIR/device" device

# Clear old build files
rm -rf out

# Build updater
export LC_ALL=C
. build/envsetup.sh
lunch aosp_updater_me176c-user
m -j4 updater

# Copy built updater binary
cp out/target/product/K013/system/bin/updater "$MAIN_DIR/asus_updater"
cd "$MAIN_DIR"

read -p "Delete AOSP 7.1 build tree (y/n)? " delete
case "$delete" in
    y|Y) rm -rf "$AOSP_DIR"
esac
