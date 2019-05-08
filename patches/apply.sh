#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$PWD"
PATCHES_DIR="$PWD/$(dirname "$0")"

fail=0
apply() {
    cd "$PATCHES_DIR/$1"
    for dir in */; do
        project="${dir//_//}"
        cd "$ROOT_DIR/$project"
        if ! git am "$PATCHES_DIR/$1/$dir"*.patch; then
            git am --abort || :
            (( fail++ )) || :
        fi
    done
}

for d in "$@"; do
    apply "$d"
done

if [[ $fail -gt 0 ]]; then
    echo "$fail patches failed to apply"
    exit 1
fi
