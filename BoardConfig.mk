USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/ms695/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := ms695

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.hardware=m3
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true

# Internal sd aka emmc
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1k1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2

# Recovery
TARGET_PREBUILT_KERNEL := device/lge/ms695/kernel
TARGET_RECOVERY_INITRC := device/lge/ms695/recovery/recovery.rc
BOARD_CUSTOM_GRAPHICS  := ../../../device/lge/ms695/recovery/graphics.c

# UMS
BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun0/file

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
