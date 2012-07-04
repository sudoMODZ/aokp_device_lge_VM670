include vendor/lge/VM670/BoardConfigVendor.mk

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00700000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00700000
# XXX: check these
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x09e80000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a4e0000

# Kernel
TARGET_KERNEL_SOURCE := kernel/lge/thunderc
TARGET_KERNEL_CONFIG := thunderc-VM670_defconfig
#TARGET_PREBUILT_KERNEL := device/lge/VM670/kernel/zImage
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderc
BOARD_KERNEL_BASE := 0x12200000
BOARD_KERNEL_PAGESIZE := 2048

include device/lge/thunderc-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := thunderc,VM670,thunderc_VM670
