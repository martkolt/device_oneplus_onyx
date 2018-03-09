PLATFORM_PATH := device/oneplus/onyx

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8974
TARGET_NO_BOOTLOADER         := true

# Platform
TARGET_BOARD_PLATFORM     := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno420

TARGET_CPU_ABI      := armeabi-v7a
TARGET_CPU_ABI2     := armeabi
TARGET_CPU_SMP      := true
TARGET_ARCH         := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT  := krait

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET             := true
TARGET_KRAIT_BIONIC_PLDOFFS          := 10
TARGET_KRAIT_BIONIC_PLDTHRESH        := 10
TARGET_KRAIT_BIONIC_BBTHRESH         := 64
TARGET_KRAIT_BIONIC_PLDSIZE          := 64

# Kernel
BOARD_KERNEL_BASE       := 0x00000000
BOARD_KERNEL_CMDLINE    := androidboot.hardware=qcom androidboot.bootdevice=msm_sdcc.1 ehci-hcd.park=3
BOARD_KERNEL_CMDLINE    += androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE   := 2048
BOARD_MKBOOTIMG_ARGS    := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_ARCH      := arm
TARGET_KERNEL_CONFIG    := onyx_defconfig
TARGET_KERNEL_SOURCE    := kernel/oneplus/onyx
KERNEL_TOOLCHAIN        := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-

# Haxx
TARGET_SPECIFIC_HEADER_PATH := $(PLATFORM_PATH)/include

# Filesystem
BOARD_FLASH_BLOCK_SIZE               := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE       := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE   := 25165824
BOARD_SYSTEMIMAGE_PARTITION_SIZE     := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE   := 2147483648

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Vendor Init
TARGET_INIT_VENDOR_LIB         := libinit_onyx
TARGET_RECOVERY_DEVICE_MODULES := libinit_onyx

# TWRP
BOARD_CUSTOM_BOOTIMG_MK      := $(PLATFORM_PATH)/custombootimg.mk
BOARD_SUPPRESS_SECURE_ERASE  := true
DEVICE_RESOLUTION            := 1080x1920
RECOVERY_SDCARD_ON_DATA      := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
# TW_EXTRA_LANGUAGES           := true
TW_INCLUDE_CRYPTO            := true
TW_NO_USB_STORAGE            := true
TW_TARGET_USES_QCOM_BSP      := true
TW_THEME                     := portrait_hdpi
TW_DEVICE_VERSION            := YumeMichi

# Assertions
TARGET_BOARD_INFO_FILE         := $(PLATFORM_PATH)/board-info.txt
