#!/sbin/sh
#
# ADDOND_VERSION=1
#
# /system/addon.d/65-signature-spoofing.sh
# Permanently enable signature spoofing and location providers outside /system
#

case "$1" in
    post-restore)
        exec sed -i -e 's/^\(ro\.dangerous\.signature_spoofing\)=.*/\1=1/' \
            -e 's/^\(ro\.services\.whitelist\.packagelist\)=.*/\1=com.google.android.gms/' \
            "$S/build.prop"
        ;;
esac
