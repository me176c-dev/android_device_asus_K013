#!/usr/bin/env bash
set -euo pipefail

PUBLIC_KEY="META-INF/com/android/otacert"
FIRMWARE="
    system/vendor/firmware/bcm43362/fw_bcmdhd.bin
    system/etc/nvram.txt
    system/etc/firmware/BCM2076B1_002.002.004.0132.0141_reduced_2dB.hcd
"
ASUS_FILES="$PUBLIC_KEY boot.img $FIRMWARE"

echo " -> Extracting files"
unzip -q "$1" $ASUS_FILES

echo " -> Extracting boot ramdisk"
"$SCRIPT_DIR/unpackbootimg.py" boot.img

echo " -> Unpacking boot ramdisk"
mkdir ramdisk && cd ramdisk
gunzip -c ../ramdisk.img | cpio -Vid --quiet
cd ..

echo " -> Copying files"
cp ramdisk/sbin/upi_ug31xx "$TARGET_DIR"
cp "$PUBLIC_KEY" "$TARGET_DIR/asus.x509.pem"
cp $FIRMWARE "$TARGET_DIR"

echo " -> Patching files"
# /config partition is used by configfs so we move it to /me176c
sed -i 's@/config/@/me176c/@g' "$TARGET_DIR/upi_ug31xx"
