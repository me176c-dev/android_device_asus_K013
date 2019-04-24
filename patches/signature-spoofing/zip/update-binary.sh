#!/sbin/sh
set -eu

ADDOND_SCRIPT="/system/addon.d/65-signature-spoofing.sh"

ui_print "Permanently enabling signature spoofing and location providers outside of /system."
ui_print "This is potentially dangerous - grant the permission with caution only."

mount_if_necessary /system
set_progress 0.1

ui_print " -> Checking system compatibility"
if ! grep -qF ro.dangerous.signature_spoofing= system/build.prop; then
    ui_print "The installed ROM does not appear to support the 'ro.dangerous.signature_spoofing' system property."
    exit 1
fi

set_progress 0.2
ui_print " -> Installing addon.d"
unzip -p "$PACKAGE" addond.sh > "$ADDOND_SCRIPT"
chmod +x "$ADDOND_SCRIPT"
chown 0:0 "$ADDOND_SCRIPT"

set_progress 0.5
ui_print " -> Updating system properties"
S=/system "$ADDOND_SCRIPT" post-restore

ui_print " -> Done!"
set_progress 1.0
