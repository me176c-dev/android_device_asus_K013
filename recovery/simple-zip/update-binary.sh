#!/sbin/sh
OUTFD="/proc/self/fd/$2"
PACKAGE="$3"

ui_print() {
    echo "ui_print $*" > "$OUTFD"
    echo "ui_print" > "$OUTFD"
}
set_progress() {
    echo "set_progress $1" > "$OUTFD"
}

mounted=""
mount_if_necessary() {
    [ -d "$1" ] || return 0
    mountpoint=$(grep "$1" /proc/mounts || :)
    if [ -z "$mountpoint" ]; then
        mounted="$mounted $1"
        mount -w "$1"
    else
        case "$mountpoint" in
            *rw*) ;;
            *) mount -o remount,rw "$1" ;;
        esac
    fi
}

unmount() {
    set +e
    for m in $mounted; do
        umount "$m"
    done
}
trap unmount EXIT
