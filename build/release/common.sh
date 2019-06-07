#!/usr/bin/env bash
DIR="$PWD"

PRODUCT=me176c
TYPE="$1"
DATE=$(date -u +%Y%m%d)
DATE_DASHED=$(date -u +%Y-%m-%d)

case "$TYPE" in
    lineage)
        TITLE="LineageOS"
        VERSION="16.0"
        BUILD_VARIANT="userdebug"
        TARGETS=(target-files-package otatools)
        ARTIFACT="lineage-$VERSION-$DATE-UNOFFICIAL-$PRODUCT-signed.zip"
        ;;
    twrp)
        TITLE="TWRP"
        VERSION="3.3.1"
        EXTRA_GROUPS="-g twrp"
        BUILD_VARIANT="eng"
        TARGETS=(recoveryimage)
        ARTIFACT="twrp-recovery-$VERSION-$DATE-UNOFFICIAL-$PRODUCT.img"
        ;;
    *)
        echo "ERROR: Unknown release type: $TYPE"
        exit 1
esac

TAG="$TYPE-$VERSION-$DATE-$PRODUCT"
TAG_MESSAGE="$TYPE-$VERSION-$DATE-UNOFFICIAL-$PRODUCT"
TAG_REPOS=$(repo list -p -g "$PRODUCT" ${EXTRA_GROUPS:-})

tag_repos() {
    while IFS= read -r repo; do
        cd "$DIR/$repo"
        "$@"
    done <<< "$TAG_REPOS"
    cd "$DIR"
}
