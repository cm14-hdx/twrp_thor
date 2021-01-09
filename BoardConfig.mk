TARGET_NO_BOOTLOADER := true

DEVICE_PATH := device/amazon/thor

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Binder API version
TARGET_USES_64_BIT_BINDER := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# Kernel
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_IMAGE_NAME := zImage

# Kernel config
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 androidboot.selinux=permissive
TARGET_KERNEL_SOURCE := kernel/amazon/hdx-common
TARGET_KERNEL_CONFIG := hdx-common_defconfig
TARGET_KERNEL_VARIANT_CONFIG := thor_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig

TARGET_CUSTOM_KERNEL_HEADERS := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include

# Enable debug on eng builds
ifeq ($(TARGET_BUILD_VARIANT),eng)
TARGET_KERNEL_ADDITIONAL_CONFIG:= debug_defconfig
endif

TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-
KERNEL_TOOLCHAIN := /home/ggow/Android/twrp-7.1/prebuilts/gcc/linux-x86/arm/$(TARGET_KERNEL_CROSS_COMPILE_PREFIX)4.9/bin

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 1000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 1000000
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_USERIMAGES_USE_EXT4 := true

# TWRP Recovery
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_QCOM_RTC_FIX := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_TARGET_USES_QCOM_BSP := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/bq27x41
TW_USE_TOOLBOX := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true
TARGET_SCREEN_WIDTH := 1200
TARGET_SCREEN_HEIGHT := 1920

ifneq (,$(strip $(wildcard bootable/recovery-twrp/twrp.cpp)))
RECOVERY_VARIANT := twrp
endif

# hdx old bootloader dtb compatibility fix
BOARD_CUSTOM_BOOTIMG_MK := device/amazon/thor/mkboot.mk

