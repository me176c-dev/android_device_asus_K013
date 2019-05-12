#!/usr/bin/env bash
set -u
RELEASE_DIR="$(dirname "$0")"
. "$RELEASE_DIR/common.sh" || exit $?

delete_tag() {
    git push --delete "$PRODUCT" "$TAG" 2> /dev/null
    git tag -d "$TAG"
}
tag_repos delete_tag
