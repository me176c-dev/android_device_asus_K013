# Custom ASUS updater binary
By default, flashing stock ASUS firmware packages will fail with builds of TWRP
based on this repository. This is because the `updater` binary in the ASUS firmware
packages does not properly work on newer, mainline kernels as used by this repository.

This issue is avoided by building a custom `updater` binary from AOSP 7.1 (Nougat).
It is not built from newer AOSP versions because they become increasingly incompatible,
e.g. because file-based OTA has long been deprecated.

**Note:** The custom `updater` binary will only flash the Android system. By default,
the firmware packages also apply BIOS and bootloader updates. Those have been disabled
for safety and to keep the custom bootloader installed.

## Building
`asus_updater` needs to be built in a (reduced) AOSP 7.1 build tree. As such, it is
not built by default. It is optional: If you don't build it, you will simply be
unable to flash the stock ASUS firmware packages in your TWRP recovery.

### From prebuilt TWRP recovery
The easiest way is to extract it from an existing
[prebuilt version of TWRP](https://github.com/me176c-dev/android_device_asus_K013/releases).

If you boot into one of these recovery images, you can pull it using ADB:
(copy it to this directory).

```bash
$ adb pull /sbin/asus_updater
```

### From source
This directory contains a `build.sh` script that fetches a small subset of AOSP 7.1,
builds the `updater` binary and copies it to this directory.

It will take about ~4 GB additional storage temporarily. After building you can
delete the AOSP 7.1 build tree and just keep the `asus_updater` binary.

```bash
$ ./build.sh
```
