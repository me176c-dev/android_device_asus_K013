#!/usr/bin/env bash
TYPE="$1"
shift

[[ -f ~/.lineage-me176c-release ]] && . ~/.lineage-me176c-release

. build/envsetup.sh || exit $?
breakfast "$1" || exit $?
shift

for target in "$@"; do
    echo "Make: $target"
    mka $target || exit $?
done

set -e

build_lineage() {
    if [[ "$SIGNAPK_MODULE" ]]; then
        RELEASETOOLS_ARGS=(--signapk_path "framework/$SIGNAPK_MODULE.jar")
    fi

    # Sign build
    build/tools/releasetools/sign_target_files_apks -o -d ~/.android-certs \
        "${RELEASETOOLS_ARGS[@]}" \
        "$OUT"/obj/PACKAGING/target_files_intermediates/*-target_files-*.zip \
        signed-target_files.zip
    build/tools/releasetools/ota_from_target_files -k ~/.android-certs/releasekey \
        --block --backup=true \
        "${RELEASETOOLS_ARGS[@]}" \
        signed-target_files.zip signed-ota_update.zip
}
build_twrp() {
    cp "$OUT"/recovery.img recovery.img
}
build_$TYPE
