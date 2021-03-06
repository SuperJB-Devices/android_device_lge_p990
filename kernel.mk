BOARD_KERNEL_CMDLINE := mem=383M@0M nvmem=128M@384M loglevel=0 muic_state=1 lpj=9994240 CRC=3010002a8e458d7 vmalloc=256M brdrev=1.0 video=tegrafb console=ttyS0,115200n8 usbcore.old_scheme_first=1 tegraboot=sdmmc tegrapart=recovery:35e00:2800:800,linux:34700:1000:800,mbr:400:200:800,system:600:2bc00:800,cache:2c200:8000:800,misc:34200:400:800,userdata:38700:c0000:800 androidboot.hardware=p990
BOARD_KERNEL_BASE := 0x10000000

#Kernel source directory
ST_KERNEL_DIR := kernel/tegra
#Kernel config file
ST_KERNEL_CFG := $(LOCAL_PATH)/superteam_p990_defconfig
#Kernel file
ST_KERNEL_IMG := $(LOCAL_PATH)/kernel

PRODUCT_COPY_FILE += $(LOCAL_PATH)/kernel:kernel

