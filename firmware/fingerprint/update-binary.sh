#!/sbin/sh
set -eu

ADDOND_SCRIPT="/system/addon.d/51-asus-fingerprint.sh"
FINGERPRINT="asus/WW_K013/K013:5.0/LRX21V/WW_K013-12.10.1.36-20151230:user/release-keys"

ui_print "Setting fingerprint: $FINGERPRINT"

mount_if_necessary /system
set_progress 0.1

ui_print " -> Installing addon.d"
unzip -p "$PACKAGE" addond.sh | sed "s@%FINGERPRINT%@$FINGERPRINT@" > "$ADDOND_SCRIPT"
chmod +x "$ADDOND_SCRIPT"
chown 0:0 "$ADDOND_SCRIPT"

set_progress 0.5
ui_print " -> Updating system properties"
S=/system "$ADDOND_SCRIPT" post-restore

ui_print " -> Done!"
set_progress 1.0
