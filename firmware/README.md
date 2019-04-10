## Firmware
Some hardware components need to be loaded with firmware to be functional.
The firmware code is usually executed on a separate processor.
Unfortunately, this firmware is usually only provided in binary form,
and there is not enough documentation to create a free alternative.

### Extraction
Running the `extract-files.sh` script in this directory, will download the
stock firmware (`UL-K013-WW-12.10.1.36-user.zip`) and extract the needed firmware
from it. [linux-firmware] is automatically synchronized using `repo`.

The firmware is more or less "optional", but Audio/WiFi/BT will not work without it.
Remove/rename `device-vendor.mk` to disable it entirely.

### [linux-firmware]
[linux-firmware] is a public repository from the [Linux] project, where vendors
can submit their firmware along with licensing conditions. They are not open-source,
but can be usually redistributed within other projects.

Firmware from [linux-firmware] is used for:

  - Audio: `intel/fw_sst_0f28.bin` -> `/vendor/firmware/intel/fw_sst_0f28.bin`
    ([License](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/LICENCE.fw_sst_0f28))
  - WiFi: `brcm/brcmfmac43362-sdio.bin` -> `/vendor/firmware/brcm/brcmfmac43362-sdio.bin`
    ([License](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/LICENCE.broadcom_bcm43xx))

### Stock firmware
Some firmware is taken from the stock firmware
([`UL-K013-WW-12.10.1.36-user.zip`](https://dlcdnets.asus.com/pub/ASUS/EeePAD/ME176C/UL-K013-WW-12.10.1.36-user.zip)).
This is device-specific firmware that is not available in [linux-firmware]:

 - WiFi: `/system/etc/nvram.txt` -> `/vendor/firmware/brcm/brcmfmac43362-sdio.txt`
 - Bluetooth: `/system/etc/firmware/BCM2076B1_002.002.004.0132.0141_reduced_2dB.hcd`
   -> `/vendor/firmware/brcm/BCM2076B1.hcd`

This firmware is redistributed with the ROM based on the assumption that it is
licensed for usage on this device. The exact license is unknown.

### Battery daemon (upi_ug31xx)
Technically, `/boot/sbin/upi_ug31xx` is not firmware but a user-space component.
It is a small static binary that is used for some kind of battery calibration
purposes together with the kernel driver. It is not strictly required (the driver
mostly works without it), but until this is investigated further it is distributed
with this ROM.

The ultimate goal is to get rid of it entirely or replace it with a reverse-engineered
open-source component.

### Also see
- [Dependencies in "Porting - Using linux-me176c in other distributions"](https://github.com/me176c-dev/linux-me176c/blob/master/porting.md#dependencies)

[linux-firmware]: https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/
[Linux]: https://www.kernel.org
