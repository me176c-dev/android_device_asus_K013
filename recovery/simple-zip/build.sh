#!/usr/bin/env bash
set -eu

OUT_FILE="$1"
shift

DIR="$PWD"
SIMPLE_ZIP_DIR="$PWD/$(dirname "$0")"

temp_dir=$(mktemp -d)
trap 'rm -rf "$temp_dir"' EXIT
[[ $# = 0 ]] || cp -at "$temp_dir" "$@"
cd "$temp_dir"

mkdir -p META-INF/com/google/android
cat "$SIMPLE_ZIP_DIR/update-binary.sh" "$DIR/update-binary.sh" > META-INF/com/google/android/update-binary
echo "# Dummy file; update-binary is a shell script." > META-INF/com/google/android/updater-script

rm -f "$DIR/$OUT_FILE"
zip -r "$DIR/$OUT_FILE"  META-INF "$@"
