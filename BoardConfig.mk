USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/s2vep/BoardConfigVendor.mk

# inherit from the common version
-include device/samsung/bcm-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/galaxys2plus-common
TARGET_KERNEL_CONFIG := cyanogenmod_s2vep_defconfig

#WiFi
BOARD_WLAN_DEVICE_REV := bcm4330_b1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/s2vep/bluetooth

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/samsung/s2vep/rootdir/fstab.capri_ss_s2vep
TARGET_RECOVERY_INITRC := device/samsung/s2vep/rootdir/init.recovery.capri_ss_s2vep.rc
RECOVERY_FSTAB_VERSION := 2
