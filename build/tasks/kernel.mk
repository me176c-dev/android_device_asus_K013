# Copyright (C) 2012 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifeq ($(TARGET_DEVICE), K013)
ifneq ($(TARGET_NO_KERNEL),true)

## Externally influenced variables
KERNEL_SRC := $(TARGET_KERNEL_SOURCE)
KERNEL_DEFCONFIG := $(TARGET_KERNEL_DEFCONFIG)

# Kernel output directory
KERNEL_OUT := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ

# Build kernel configuration in separate directory
# For some reason, include/config/auto.conf otherwise gets
# CONFIG_INITRAMFS_COMPRESSION incorrectly set to ".gz"
KERNEL_OUT_CONFIG := $(TARGET_OUT_INTERMEDIATES)/KERNEL_CONFIG_OBJ

# Configure kernel compiler toolchain
PATH_OVERRIDE :=
KERNEL_CLANG :=
ifeq ($(TARGET_KERNEL_CLANG_COMPILE),true)
    ifneq ($(TARGET_KERNEL_CLANG_VERSION),)
        KERNEL_CLANG_VERSION := clang-$(TARGET_KERNEL_CLANG_VERSION)
    else
        # Use the default version of clang if TARGET_KERNEL_CLANG_VERSION hasn't been set by the device config
        KERNEL_CLANG_VERSION := $(LLVM_PREBUILTS_VERSION)
    endif
    TARGET_KERNEL_CLANG_PREBUILTS ?= clang
    TARGET_KERNEL_CLANG_PATH := $(BUILD_TOP)/prebuilts/$(TARGET_KERNEL_CLANG_PREBUILTS)/host/$(HOST_OS)-x86/$(KERNEL_CLANG_VERSION)
    PATH_OVERRIDE += PATH=$(TARGET_KERNEL_CLANG_PATH)/bin:$$PATH LD_LIBRARY_PATH=$(TARGET_KERNEL_CLANG_PATH)/lib64:$$LD_LIBRARY_PATH

    ifeq ($(KERNEL_ARCH),arm64)
        KERNEL_CLANG += CLANG_TRIPLE=aarch64-linux-gnu-
    else ifeq ($(KERNEL_ARCH),arm)
        KERNEL_CLANG += CLANG_TRIPLE=arm-linux-gnu-
    else ifeq ($(KERNEL_ARCH),x86)
        KERNEL_CLANG += CLANG_TRIPLE=x86_64-linux-gnu-
    endif

    # use clang/llvm for everything
    KERNEL_CLANG += CC="$(CCACHE_BIN) clang" LD=ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy
    KERNEL_CLANG += HOSTCC=clang HOSTLD=ld.lld HOSTLDFLAGS=-fuse-ld=lld HOSTAR=llvm-ar

    # The kernel Makefile has a check that does not append HOSTCFLAGS/HOSTLDFLAGS,
    # so it attempts to use "ld", which isn't set up for the Android build environment.
    KERNEL_CLANG += HOST_LIBELF_LIBS="-lelf -fuse-ld=lld"
endif

# bison/flex
PATH_OVERRIDE += PATH=$(BUILD_TOP)/prebuilts/build-tools/$(HOST_OS)-x86/bin:$$PATH
PATH_OVERRIDE += BISON_PKGDATADIR=$(BUILD_TOP)/prebuilts/build-tools/common/bison

# System tools are no longer allowed on 10+
PATH_OVERRIDE += $(TOOLS_PATH_OVERRIDE)

# For some reason parallelism is broken in the "make" prebuilt,
# so the kernel takes hours to build. Use host make if available.
ifneq ($(wildcard /usr/bin/make),)
KERNEL_MAKE_PREFIX := /usr/bin/
endif

KERNEL_JOBS := -j$(shell nproc --all)
KERNEL_MAKE := $(PATH_OVERRIDE) $(KERNEL_MAKE_PREFIX)make $(KERNEL_JOBS) \
               -C $(KERNEL_SRC) O=$(KERNEL_BUILD_OUT_PREFIX)$(KERNEL_OUT) \
	       ARCH=$(KERNEL_ARCH) $(KERNEL_CROSS_COMPILE) $(KERNEL_CLANG)

# Kernel config
KERNEL_CONFIG_GENERATED := $(KERNEL_OUT_CONFIG)/.config
KERNEL_CONFIG := $(KERNEL_OUT)/.config

$(KERNEL_CONFIG_GENERATED): $(KERNEL_DEFCONFIG)
	@echo "Building Kernel Config"
	$(copy-file-to-target)
	$(KERNEL_MAKE) O=$(KERNEL_BUILD_OUT_PREFIX)$(KERNEL_OUT_CONFIG) olddefconfig

$(KERNEL_CONFIG): $(KERNEL_CONFIG_GENERATED)
	$(copy-file-to-target)

# Kernel binary
KERNEL_BIN := $(KERNEL_OUT)/arch/$(KERNEL_ARCH)/boot/$(BOARD_KERNEL_IMAGE_NAME)
KERNEL_MAKE_TARGET := $(BOARD_KERNEL_IMAGE_NAME)

$(KERNEL_BIN): $(KERNEL_CONFIG)
	@echo "Building Kernel"
	$(KERNEL_MAKE) $(KERNEL_MAKE_TARGET)

$(INSTALLED_KERNEL_TARGET): $(KERNEL_BIN)

# Kernel modules
ifneq ($(TARGET_KERNEL_BUILD_MODULES), false)
KERNEL_MAKE_TARGET := $(KERNEL_MAKE_TARGET) modules

KERNEL_MODULES_OUT := $(TARGET_OUT_VENDOR)/lib/modules
KERNEL_MODULES_OBJ := $(TARGET_OUT_INTERMEDIATES)/KERNEL_MODULES

$(KERNEL_MODULES_OBJ): $(KERNEL_BIN)
	@echo "Installing Kernel Modules"
	$(KERNEL_MAKE) INSTALL_MOD_PATH=$(KERNEL_BUILD_OUT_PREFIX)$(KERNEL_MODULES_OBJ) modules_install

$(KERNEL_MODULES_OUT): $(KERNEL_MODULES_OBJ)
	@echo "Copying Kernel Modules"
	$(hide) rm -rf $(KERNEL_MODULES_OUT)
	KERNELRELEASE=$$(<$(KERNEL_OUT)/include/config/kernel.release) && \
		cp -a $(KERNEL_MODULES_OBJ)/lib/modules/$$KERNELRELEASE $(KERNEL_MODULES_OUT) && \
		rm -f $(KERNEL_MODULES_OUT)/{source,build}

$(INSTALLED_KERNEL_TARGET): | $(KERNEL_MODULES_OUT)
endif

endif # TARGET_NO_KERNEL
endif # TARGET_DEVICE
