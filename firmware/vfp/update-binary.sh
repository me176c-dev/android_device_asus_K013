#!/sbin/sh
set -eu

mount_if_necessary /system
set_progress 0.1

fingerprint=$(sed -n 's/^ro\.build\.fingerprint=//p' /system/build.prop)
ui_print "Setting vendor fingerprint: $fingerprint"

set_progress 0.2
ui_print " -> Updating vendor properties"
sed -i -e "s@^\(ro\.vendor\.build\.fingerprint\)=.*@\1=$fingerprint@" /system/vendor/build.prop

ui_print " -> Done!"
set_progress 1.0
