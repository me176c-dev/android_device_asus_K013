#!/usr/bin/env bash
set -euo pipefail

# Switch to "firmware" directory
cd "$(dirname "$(readlink -f "$0")")"

export SCRIPT_DIR="$PWD"
export TARGET_DIR="$PWD/proprietary"

FIRMWARE_FILENAME="UL-K013-WW-12.10.1.36-user.zip"
FIRMWARE_SHA256="b19a2901bd5920b58bd3693243a9edf433656bcee8f454637ee401e28c096469 $FIRMWARE_FILENAME"
FIRMWARE_URL="https://dlcdnets.asus.com/pub/ASUS/EeePAD/ME176C/$FIRMWARE_FILENAME"
FIRMWARE_FILE="$PWD/$FIRMWARE_FILENAME"

echo "Downloading firmware..."
if ! sha256sum -c <<< "$FIRMWARE_SHA256" 2> /dev/null; then
    curl -Lo "$FIRMWARE_FILE" "$FIRMWARE_URL"
    sha256sum -c <<< "$FIRMWARE_SHA256"
fi

echo "Deleting old files"
rm -rf "$TARGET_DIR"
mkdir "$TARGET_DIR"

TEMP_DIR=$(mktemp -d)
cd "$TEMP_DIR"

echo "Processing firmware..."
"$SCRIPT_DIR/_extract.asus.sh" "$FIRMWARE_FILE"

rm -r "$TEMP_DIR"
echo "Done"
