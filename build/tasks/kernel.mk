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
KERNEL_ARCH := $(TARGET_KERNEL_ARCH)

# Kernel output directory
KERNEL_OUT := $(abspath $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ)

# Configure kernel compiler toolchain
KERNEL_CROSS_COMPILE := CROSS_COMPILE="$(CC_WRAPPER) $(TARGET_KERNEL_CROSS_COMPILE_PREFIX)"
KERNEL_MAKE := $(MAKE) -j6 -C $(KERNEL_SRC) O=$(KERNEL_OUT) ARCH=$(KERNEL_ARCH) $(KERNEL_CROSS_COMPILE)

# Kernel config
KERNEL_CONFIG := $(KERNEL_OUT)/.config

$(KERNEL_CONFIG): $(KERNEL_DEFCONFIG)
	@echo "Building Kernel Config"
	$(copy-file-to-target)
	$(KERNEL_MAKE) olddefconfig

# Kernel headers
KERNEL_HEADERS_INSTALL := $(KERNEL_OUT)/usr
$(KERNEL_HEADERS_INSTALL):
#	@echo "Building Kernel Headers"
#	$(KERNEL_MAKE) headers_install

# Kernel binary
KERNEL_BIN := $(KERNEL_OUT)/arch/$(KERNEL_ARCH)/boot/$(BOARD_KERNEL_IMAGE_NAME)
KERNEL_MAKE_TARGET := $(BOARD_KERNEL_IMAGE_NAME)

TARGET_KERNEL_BINARIES: $(KERNEL_CONFIG)
	@echo "Building Kernel"
	$(KERNEL_MAKE) $(KERNEL_MAKE_TARGET)

# Kernel modules
ifneq ($(TARGET_KERNEL_BUILD_MODULES), false)
KERNEL_MAKE_TARGET := $(KERNEL_MAKE_TARGET) modules

KERNEL_MODULES_OUT := $(abspath $(TARGET_OUT_VENDOR)/lib/modules)
KERNEL_MODULES_OBJ := $(abspath $(TARGET_OUT_INTERMEDIATES)/KERNEL_MODULES)

$(KERNEL_MODULES_OBJ): TARGET_KERNEL_BINARIES
	@echo "Installing Kernel Modules"
	$(KERNEL_MAKE) INSTALL_MOD_PATH=$(KERNEL_MODULES_OBJ) modules_install

$(KERNEL_MODULES_OUT): $(KERNEL_MODULES_OBJ)
	@echo "Copying Kernel Modules"
	$(hide) rm -rf $(KERNEL_MODULES_OUT)
	KERNELRELEASE=$$(<$(KERNEL_OUT)/include/config/kernel.release) && \
		cp -a $(KERNEL_MODULES_OBJ)/lib/modules/$$KERNELRELEASE $(KERNEL_MODULES_OUT) && \
		rm -f $(KERNEL_MODULES_OUT)/{source,build}

# TODO: Remove kernel modules from kernel target
$(KERNEL_BIN): TARGET_KERNEL_BINARIES | $(KERNEL_MODULES_OUT)
else
$(KERNEL_BIN): TARGET_KERNEL_BINARIES
endif

$(INSTALLED_KERNEL_TARGET): $(KERNEL_BIN)
	$(transform-prebuilt-to-target)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

.PHONY: kernel
kernel: $(INSTALLED_KERNEL_TARGET)

endif # TARGET_NO_KERNEL
endif # TARGET_DEVICE
