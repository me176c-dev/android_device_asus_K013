TARGET_KERNEL_SRC := kernel/asus/me176c

TARGET_KERNEL_ARCH := x86_64
TARGET_KERNEL_CONFIG := me176c_defconfig

KERNEL_NAME := bzImage

# CCache detection is taken from https://github.com/LineageOS/android_vendor_cm/blob/cm-14.1/build/tasks/kernel.mk
ifneq ($(USE_CCACHE),)
    # Detect if the system already has ccache installed to use instead of the prebuilt
    ccache := $(shell which ccache)

    ifeq ($(ccache),)
        ccache := $(ANDROID_BUILD_TOP)/prebuilts/misc/$(HOST_PREBUILT_TAG)/ccache/ccache
        # Check that the executable is here.
        ccache := $(strip $(wildcard $(ccache)))
    endif
endif

KERNEL_CROSS_COMPILE := CROSS_COMPILE="$(ccache) $(KERNEL_CROSS_COMPILE_WRAPPER)"
ccache :=

# Set the output for the kernel build products.
KERNEL_OUT := $(abspath $(TARGET_OUT_INTERMEDIATES)/kernel)
KERNEL_BIN := $(KERNEL_OUT)/arch/$(TARGET_KERNEL_ARCH)/boot/$(KERNEL_NAME)
KERNEL_MODULES_INSTALL := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib/modules

KERNELRELEASE = $(shell cat $(KERNEL_OUT)/include/config/kernel.release)

build_kernel := $(MAKE) -j8 -C $(TARGET_KERNEL_SRC) \
	O=$(KERNEL_OUT) \
	ARCH=$(TARGET_KERNEL_ARCH) \
	$(KERNEL_CROSS_COMPILE) \
	KCFLAGS="$(KERNEL_CFLAGS)" \
	KAFLAGS="$(KERNEL_AFLAGS)" \
	$(if $(SHOW_COMMANDS),V=1) \
	INSTALL_MOD_PATH=$(abspath "$(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)")

KERNEL_CONFIG := $(KERNEL_OUT)/.config
$(KERNEL_CONFIG):
	$(MAKE) -C $(TARGET_KERNEL_SRC) \
	O=$(KERNEL_OUT) \
	ARCH=$(TARGET_KERNEL_ARCH) \
	$(KERNEL_CROSS_COMPILE) \
	$(TARGET_KERNEL_CONFIG)

# Produces the actual kernel image!
$(PRODUCT_OUT)/kernel: $(KERNEL_CONFIG) | $(ACP)
	$(build_kernel) $(KERNEL_NAME) modules
	$(hide) $(ACP) -fp $(KERNEL_BIN) $@

ALL_EXTRA_MODULES := $(patsubst %,$(TARGET_OUT_INTERMEDIATES)/kmodule/%,$(TARGET_EXTRA_KERNEL_MODULES))
$(ALL_EXTRA_MODULES): $(TARGET_OUT_INTERMEDIATES)/kmodule/%: $(PRODUCT_OUT)/kernel
	@echo Building additional kernel module $*
	$(build_kernel) M=$(abspath $@) modules

# Copy modules in directory pointed by $(KERNEL_MODULES_ROOT)
# First copy modules keeping directory hierarchy lib/modules/`uname-r`for libkmod
# Second, create flat hierarchy for insmod linking to previous hierarchy
$(KERNEL_MODULES_INSTALL): $(PRODUCT_OUT)/kernel $(ALL_EXTRA_MODULES)
	$(hide) rm -rf $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib/modules
	$(build_kernel) modules_install
	$(hide) for kmod in "$(TARGET_EXTRA_KERNEL_MODULES)" ; do \
		echo Installing additional kernel module $${kmod} ; \
		$(subst +,,$(subst $(hide),,$(build_kernel))) M=$(abspath $(TARGET_OUT_INTERMEDIATES))/$${kmod}.kmodule modules_install ; \
	done
	$(hide) rm -f $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib/modules/*/{build,source}
	$(hide) mv $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib/modules/$(KERNELRELEASE)/* $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib/modules
	$(hide) rm -rf $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib/modules/$(KERNELRELEASE)
	$(hide) touch $@

# Makes sure any built modules will be included in the system image build.
ALL_DEFAULT_INSTALLED_MODULES += $(KERNEL_MODULES_INSTALL)

installclean: FILES += $(KERNEL_OUT) $(PRODUCT_OUT)/kernel

.PHONY: kernel
kernel: $(PRODUCT_OUT)/kernel
