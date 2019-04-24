## Signature Spoofing Patch
This ROM uses a slightly modified patch to provide signature spoofing for
[microG](https://microg.org). There is the usual runtime permission, but it was
extended to only grant the permission if the system property
`ro.dangerous.signature_spoofing` is set to `1` (`0` is the default).

The reason for this change is some users will eventually be unaware of the
implications of signature spoofing (e.g. because they are using Google Apps).
The system property can be set persistently by flashing an extra ZIP package.

An additional patch is needed to be able to install location providers
(e.g. micro/UnifiedNlp) outside of the system partition.
Similarly, the services that may be installed outside of the system partition,
can be set using the `ro.services.whitelist.packagelist` system property.
For microG, this property should be set to `com.google.android.gms`.
The default value is empty (no services).

The patches can be applied by _sourcing_:

```bash
$ . device/asus/K013/patches/signature-spoofing/apply.sh
```

The script will export the environment variable `PATCH_SIGNATURE_SPOOFING=true`,
which will cause inclusion of `system.prop` in this directory.
It contains the default values, mainly to prevent changing these system properties
at runtime.

### Flashable ZIP
There is a flashable ZIP file that enables signature spoofing and location
providers outside of `/system` permanently by setting the appropriate system
properties. It uses the `addon.d` system to persist after installing LineageOS
updates.

It can be built using `./build.sh` in the `zip` directory.
Alternatively, it is available as release on this repository.
