# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
-include device/semc/mogami-common/BoardConfigCommon.mk

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/urushi/config

# Kernel
TARGET_KERNEL_SOURCE := kernel/semc/msm7x30
TARGET_KERNEL_CONFIG := pac_urushi_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-gnueabihf-linaro-4.7

TARGET_RECOVERY_INITRC := device/semc/urushi/recovery/init.rc

# Sensor
SOMC_CFG_SENSORS_COMPASS_AK8975 := yes
SOMC_CFG_SENSORS_ACCEL_BMA150_INPUT := yes
SOMC_CFG_SENSORS_PROXIMITY_APDS9700 := yes

# Assert
TARGET_OTA_ASSERT_DEVICE := ST18i,ST18a,urushi

#twrp
DEVICE_RESOLUTION := 480x854
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_HAS_NO_RECOVERY_PARTITION := true
TW_FLASH_FROM_STORAGE := true

# inherit from the proprietary version
-include vendor/semc/urushi/BoardConfigVendor.mk
