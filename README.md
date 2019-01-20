# LineageOS 16.0 for ASUS MeMO Pad 7 (ME176C/CX)
LineageOS is a free, community built, aftermarket firmware distribution of Android 9 (Pie),
which is designed to increase performance and reliability over stock Android for your device.

This is an unofficial port for the ASUS MeMO Pad 7 (ME176C/CX), based on a recent upstream kernel
and various open-source components. More information available on the [XDA Thread](
https://forum.xda-developers.com/memo-pad-7/orig-development/rom-unofficial-lineageos-14-1-asus-memo-t3633341).

## Development
The ROM consists out of multiple repositories, the [device configuration](https://github.com/me176c-dev/android_device_asus_K013),
the [kernel](https://github.com/me176c-dev/android_kernel_asus_K013), a few [proprietary firmware files/libraries](
https://github.com/me176c-dev/android_vendor_asus_K013) :(, and a few forks of upstream repositories and other open-source
projects.

### Building the ROM
The ROM is built in a regular LineageOS 16.0 build environment, with a few additional/replaced repositories using a
local manifest.

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

4. **Prepare proprietary files:** Unfortunately, some functionality still requires proprietary firmware and/or libraries.
For the full set of features, you need to download and unpack using a script.

    ```bash
    $ . build/envsetup.sh
    $ lunch lineage_me176c-userdebug
    $ mka proprietary
    ```

   Currently, one step requires root to temporarily mount a partition from a downloaded disk image. The script is using
`sudo` to request root access.

5. **Build the ROM:** Depending on your CPU, this will take even longer.

    ```bash
    $ . build/envsetup.sh
    $ brunch lineage_me176c-userdebug
    ```

### Additional patches
**Note:** This section will be updated for LineageOS 16.0 when the first "stable" build is released.

The ROM distributed on XDA comes with additional patches not present in LineageOS or the me176c-dev repositories.
These are applied manually before the ROM build is started.

#### Substratum theme engine
Substratum patches are taken from [LineageOMS](https://forum.xda-developers.com/apps/substratum/reference-lineageos-substratum-support-t3580276)
and applied using the provided [merge script](https://github.com/LineageOMS/merge_script).

```bash
$ ./lineage_oms_merge.sh path/to/your/lineage/folder
```

There are a few trivial merge conflicts that need to be solved manually (since LineageOMS isn't updated anymore).

#### Signature spoofing
Two patches are applied to `frameworks/base` to add support for [microG](https://microg.org). Download the first patch from
[`android_frameworks_base-N.patch`](https://github.com/microg/android_packages_apps_GmsCore/blob/master/patches/android_frameworks_base-N.patch).
The second patch is applied [from the OmniROM source](https://github.com/omnirom/android_frameworks_base/commit/8694596700d803cf287729e5324b544d143360e0).

```bash
$ cd frameworks/base
$ git am path/to/android_frameworks_base-N.patch
$ git remote add omni https://github.com/omnirom/android_frameworks_base.git
$ git fetch omni android-7.1
$ git cherry-pick 8694596700d803cf287729e5324b544d143360e0
```

#### [WireGuard](https://www.wireguard.com) VPN
WireGuard support is added to the kernel using the kernel patch script, as explained in the [official XDA thread](
https://forum.xda-developers.com/android/development/wireguard-rom-integration-t3711635).

```bash
$ ./patch-kernel.sh kernel/asus/me176c
```
