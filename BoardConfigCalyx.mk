# Inline kernel building
BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb
ifeq ($(INLINE_KERNEL_BUILDING),true)
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_ADDITIONAL_FLAGS := \
    DTC=$(shell pwd)/prebuilts/misc/$(HOST_OS)-x86/dtc/dtc \
    MKDTIMG=$(shell pwd)/prebuilts/misc/$(HOST_OS)-x86/libufdt/mkdtimg
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_SOURCE := kernel/google/wahoo
TARGET_NEEDS_DTBOIMAGE := true
TARGET_KERNEL_CONFIG := wahoo_defconfig
endif

# Properties
TARGET_VENDOR_PROP += device/google/wahoo/vendor.prop
