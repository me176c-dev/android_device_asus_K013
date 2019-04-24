#!/sbin/sh
#
# ADDOND_VERSION=1
#
# /system/addon.d/51-asus-fingerprint.sh
# Change build fingerprint to the one from the stock ROM to pass Google Play certification.
#
# New fingerprint: %FINGERPRINT%
#
set -e

case "$1" in
    post-restore)
        sed -i -e "s@^\(ro\.build\.fingerprint\)=.*@\1=%FINGERPRINT%@" "$S/build.prop"
        sed -i -e "s@^\(ro\.vendor\.build\.fingerprint\)=.*@\1=%FINGERPRINT%@" "$S/vendor/build.prop"
        ;;
esac
