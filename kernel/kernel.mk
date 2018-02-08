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

## Externally influenced variables
KERNEL_SRC := $(TARGET_KERNEL_SOURCE)
KERNEL_DEFCONFIG := $(TARGET_KERNEL_DEFCONFIG)
KERNEL_ARCH := $(TARGET_KERNEL_ARCH)

# Clear this first to prevent accidental poisoning from env
MAKE_FLAGS :=

# Configure kernel compiler toolchain
KERNEL_CROSS_COMPILE := CROSS_COMPILE="$(CC_WRAPPER) $(TARGET_KERNEL_CROSS_COMPILE_PREFIX)"

# Kernel output directory
KERNEL_OUT := $(abspath $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ)

# Kernel config
KERNEL_CONFIG := $(KERNEL_OUT)/.config

$(KERNEL_CONFIG): $(KERNEL_DEFCONFIG) | $(ACP)
	@echo "Building Kernel Config"
	$(copy-file-to-target)
	$(MAKE) $(MAKE_FLAGS) -C $(KERNEL_SRC) O=$(KERNEL_OUT) ARCH=$(KERNEL_ARCH) $(KERNEL_CROSS_COMPILE) olddefconfig

# Kernel headers
KERNEL_HEADERS_INSTALL := $(KERNEL_OUT)/usr
$(KERNEL_HEADERS_INSTALL):
#	@echo "Building Kernel Headers"
#	$(MAKE) $(MAKE_FLAGS) -C $(KERNEL_SRC) O=$(KERNEL_OUT) ARCH=$(KERNEL_ARCH) $(KERNEL_CROSS_COMPILE) headers_install

# Kernel binary
KERNEL_BIN := $(KERNEL_OUT)/arch/$(KERNEL_ARCH)/boot/$(BOARD_KERNEL_IMAGE_NAME)

TARGET_KERNEL_BINARIES: $(KERNEL_CONFIG)
	@echo "Building Kernel"
	$(MAKE) $(MAKE_FLAGS) -C $(KERNEL_SRC) O=$(KERNEL_OUT) ARCH=$(KERNEL_ARCH) $(KERNEL_CROSS_COMPILE) $(BOARD_KERNEL_IMAGE_NAME)

# Kernel modules
KERNEL_MODULES_OUT := $(abspath $(TARGET_OUT_VENDOR)/lib/modules)
KERNEL_MODULES_OBJ := $(abspath $(TARGET_OUT_INTERMEDIATES)/KERNEL_MODULES)

$(KERNEL_MODULES_OBJ): TARGET_KERNEL_BINARIES
	@echo "Building Kernel Modules"
	$(MAKE) $(MAKE_FLAGS) -C $(KERNEL_SRC) O=$(KERNEL_OUT) ARCH=$(KERNEL_ARCH) $(KERNEL_CROSS_COMPILE) modules
	$(MAKE) $(MAKE_FLAGS) -C $(KERNEL_SRC) O=$(KERNEL_OUT) INSTALL_MOD_PATH=$(KERNEL_MODULES_OBJ) ARCH=$(KERNEL_ARCH) $(KERNEL_CROSS_COMPILE) modules_install

	find $(KERNEL_MODULES_OBJ) -type f -name '*.ko' -exec $(KERNEL_TOOLCHAIN_PATH)strip --strip-unneeded {} ';'
	$(MAKE) $(MAKE_FLAGS) -C $(KERNEL_SRC) O=$(KERNEL_OUT) INSTALL_MOD_PATH=$(KERNEL_MODULES_OBJ) ARCH=$(KERNEL_ARCH) $(KERNEL_CROSS_COMPILE) modules_sign

$(KERNEL_MODULES_OUT): $(KERNEL_MODULES_OBJ)
	@echo "Copying Kernel Modules"
	$(hide) rm -rf $(KERNEL_MODULES_OUT)
	$(hide) mkdir -p $(KERNEL_MODULES_OUT)
	find $(KERNEL_MODULES_OBJ) -type f -name '*.ko' -exec cp {} $(KERNEL_MODULES_OUT) ';'

# TODO: Remove kernel modules from kernel target
$(KERNEL_BIN): TARGET_KERNEL_BINARIES | $(KERNEL_MODULES_OUT)

$(INSTALLED_KERNEL_TARGET): $(KERNEL_BIN) | $(ACP)
	$(transform-prebuilt-to-target)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

.PHONY: kernel
kernel: $(INSTALLED_KERNEL_TARGET)
