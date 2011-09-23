# inherit from the proprietary version
-include device/lge/star-common/BoardConfigCommon.mk

#Kernel config
include device/lge/p990/kernel.mk

TARGET_BOOTLOADER_BOARD_NAME := p990
BOARD_PAGE_SIZE := 0x00000800

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x15cb2c00
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x5e7dc000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_VOLD_MAX_PARTITIONS := 9

BOARD_USES_GPSSHIM := true
BOARD_GPS_LIBRARIES := libgps
