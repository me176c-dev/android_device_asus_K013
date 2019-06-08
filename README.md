# LineageOS 16.0 for ASUS MeMO Pad 7 (ME176C(X)))
[LineageOS] is a free, community built, aftermarket firmware distribution of Android 9 (Pie),
which is designed to increase performance and reliability over stock Android for your device.

This is an unofficial port for the [ASUS MeMO Pad 7 (ME176C(X))], based on a recent mainline kernel
and various open-source components. More information available on the [XDA Thread](
https://forum.xda-developers.com/memo-pad-7/orig-development/rom-unofficial-lineageos-16-0-asus-memo-t3929600).

See [Development](#development) for a technical overview of the ROM.

## Building
The ROM is built in a regular LineageOS 16.0 build environment,
with a few additional repositories using a local manifest.

**Note:** This guide assumes you have built LineageOS for another device before and therefore are aware of
preparations required to build LineageOS (e.g. supported Linux distributions, additional build dependencies, ...).

1. **Initialize local repositories:**

    ```bash
    $ repo init -u https://github.com/LineageOS/android.git -b lineage-16.0
    ```

2. **Add the local manifest:** Download [lineage_me176c.xml](lineage_me176c.xml) and copy it to `.repo/local_manifests/`.
   Create the directory if it doesn't exist already.

3. **Sync the repositories:** Depending on your Internet connection, this will take a long time.

    ```bash
    $ repo sync
    ```

4. **Extract firmware:** (also see: [Firmware README](firmware/README.md))

    ```bash
    $ cd device/asus/K013
    $ ./extract_files.sh
    ```

    **Note:** This step is "optional". However, WiFi/BT will not be functional
    without the firmware from the stock system.

5. **Build the ROM:** Depending on your CPU, this will take even longer.

    ```bash
    $ device/asus/K013/patches/apply.sh aosp
    $ . build/envsetup.sh
    $ brunch lineage_me176c-userdebug
    ```

    The first command applies some patches to repositories from AOSP/LineageOS.
    It should be re-run after `repo sync`.
    Note that it fails if the patches are already applied.

#### TWRP
[TWRP (TeamWin Recovery Project)](https://twrp.me) is also built in the LineageOS 16.0 tree.

**Note:** By default, the built TWRP will not be able to flash stock ASUS firmware ZIPs.  
See [recovery/asus_updater/README.md](recovery/asus_updater/README.md) for details.

1. **Checkout TWRP fork:** Right now, a few extra patches are needed to build TWRP.
The command fetches TWRP and the extra patches and checks it out in `bootable/recovery`.

    ```bash
    $ device/asus/K013/twrp-checkout.sh
    ```

2. **Build TWRP:**

    ```bash
    $ . build/envsetup.sh
    $ lunch twrp_me176c-userdebug
    $ mka recoveryimage
    ```

### Additional patches
The ROM distributed as releases/on XDA comes with additional patches that are not
part of the build by default. These are applied manually before the ROM build is started.

The changes that are made are documented below. Some of the patches are available
in the `patches` directory.

#### Signature Spoofing
See [Signature Spoofing Patch](patches/signature-spoofing/README.md).

#### [WireGuard](https://www.wireguard.com) VPN
WireGuard support is added to the kernel using the kernel patch script, as explained in the [official XDA thread](
https://forum.xda-developers.com/android/development/wireguard-rom-integration-t3711635).

```bash
$ device/asus/K013/patches/wireguard/patch-kernel.sh kernel/me176c
```

(The official [`android_kernel_wireguard`](https://git.zx2c4.com/android_kernel_wireguard/)
repository is cloned to `device/asus/K013/patches/wireguard`.)

## Development

### Introduction
Almost all Android device ports rely on components from the vendor:

  - **Kernel:** The [Linux] kernel used in these devices is usually forked from a rather old
    release, and then modified heavily with millions lines of code changed for additional
    hardware support. This code is usually messy, and potentially insecure because it does
    not go through the same review process. Those kernels also get increasingly more
    difficult to maintain with upstream security fixes.

    Projects like [LineageOS] usually take this kernel, and try to make the best of it, by porting
    certain changes made in other projects.

  - **User-space components:** Each Android device needs device-specific user-space components
    that make Android work with the specific hardware. Some parts of that code may be open-source,
    either through [AOSP] or related projects. However, there is not a single device that fully works
    without additional proprietary user-space components.

    Most devices cannot even boot without those proprietary "blobs", because for example the
    OpenGL implementation is proprietary. It is almost impossible to maintain these "blobs" properly,
    because they need to be provided from some vendor in compiled form or can be only edited manually
    in binary form. As the device ages, more and more security issues will be found in these
    "blobs", and it becomes increasingly difficult to keep them working on newer Android versions.

This port is different: Except for a bit of firmware, there are no components used from the stock system:

 - **Kernel:** This port uses a mainline (i.e. a largely unmodified) [Linux] kernel.
   There are a few minor changes and extra drivers that have not been submitted upstream yet,
   but those changes can be easily rebased on top of new kernel releases. Therefore, this port usually
   targets the latest Linux LTS release, as those are maintained with Android-specific patches in AOSP.

 - **User-space components:** This port does not make use of proprietary user-space libraries.
   Various open-source projects are used to implement the device-specific parts:
     - OpenGL/Vulkan: [Mesa](https://www.mesa3d.org)
     - Gralloc: [Minigbm](https://github.com/intel/minigbm)
       (originally from [ChromiumOS](https://chromium.googlesource.com/chromiumos/platform/minigbm/))
     - Sensors: [android-iio-sensors-hal](https://github.com/intel/android-iio-sensors-hal)
     - Hardware-accelerated video codecs:
       [libva](https://github.com/intel/libva), [intel-vaapi-driver](https://github.com/intel/intel-vaapi-driver),
       [MediaSDK](https://github.com/Intel-Media-SDK/MediaSDK), [MediaSDK_OMX_IL](https://github.com/Intel-Media-SDK/MediaSDK_OMX_IL)
     - Thermal: [thermald](https://github.com/intel/thermal_daemon)

 - **Firmware:** See [Firmware README](firmware/README.md).

Unfortunately, some hardware components are hard to get working in such an environment.
[Camera](https://github.com/me176c-dev/me176c/issues/2) and [GPS](https://github.com/me176c-dev/me176c/issues/3)
are the two main features missing in this port either because of missing kernel drivers, or because the user-space
portion is proprietary and completely undocumented.

### Overview
The ROM consists out of multiple repositories:
  - [Device configuration](https://github.com/me176c-dev/android_device_asus_K013) (this repository)
  - [Kernel fork (linux-me176c)](https://github.com/me176c-dev/linux-me176c)
  - A few forks of upstream repository and other open-source projects (with minor changes only). See [lineage_me176c.xml](lineage_me176c.xml).

[ASUS MeMO Pad 7 (ME176C(X))]: https://github.com/me176c-dev/me176c
[LineageOS]: https://lineageos.org
[Linux]: https://www.kernel.org
[AOSP]: https://source.android.com
[Android-x86]: http://www.android-x86.org
