# Since we use the fingerprint from the original ROM this updates
# the OTA generation to display the real fingerprint when the
# package is installed.
def SetRealFingerprint(info):
    props = info.info_dict.get('build.prop')
    if not props:
        print("build.prop not available, not updating fingerprint")
        return

    real_fingerprint = props.get('ro.bootimage.build.fingerprint')
    if not real_fingerprint:
        print("Real fingerprint not available, not updating fingerprint")
        return

    # Update the fingerprint
    print("Setting fingerprint to " + real_fingerprint)
    props['ro.build.fingerprint'] = real_fingerprint
    info.metadata['post-build'] = real_fingerprint

def FullOTA_Assertions(info):
    SetRealFingerprint(info)

def IncrementalOTA_Assertions(info):
    SetRealFingerprint(info)
