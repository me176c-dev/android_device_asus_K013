# TODO: Enforcing
BOARD_KERNEL_CMDLINE += enforcing=0 androidboot.selinux=permissive
BOARD_SEPOLICY_DIRS += device/intel/android_ia/sepolicy

# Pass device target to build
# TODO: Remove?
BOARD_SEPOLICY_DIRS += device/intel/android_ia/sepolicy/debugfs
BOARD_SEPOLICY_M4DEFS += board_sepolicy_target_product=$(TARGET_PRODUCT)
