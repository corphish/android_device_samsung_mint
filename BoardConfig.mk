# Copyright (C) 2013 The CyanogenMod Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

TARGET_OTA_ASSERT_DEVICE := mint

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a5
TARGET_CPU_VARIANT := cortex-a5
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_TLS_REGISTER := true
#TARGET_CORTEX_CACHE_LINE_32 := true

# Board
TARGET_BOOTLOADER_BOARD_NAME := mint
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := sc8810
COMMON_GLOBAL_CFLAGS += -DSPRD_HARDWARE

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/samsung/mint/
TARGET_KERNEL_CONFIG := mint-vlx-rev03_defconfig
BOARD_USES_UNCOMPRESSED_BOOT := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_CACHEIMAGE_PARTITION_SIZE := 536870912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 939524096
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2172649472
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Recovery
BOARD_LDPI_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/mint/recovery/recovery_keys.c
TARGET_RECOVERY_INITRC := device/samsung/mint/recovery/recovery.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/mint/recovery/graphics.c
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_FSTAB := device/samsung/mint/recovery.fstab
BOARD_SUPPRESS_EMMC_WIPE := true

# UMS
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/dwc_otg.0/gadget/lun0/file"

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/mint/egl/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true

# Camera
USE_CAMERA_STUB := true
CAMERA_DISP_ION := true
CAMERA_SUPPORT_SIZE := 3M
TARGET_BOARD_NO_FRONT_SENSOR := true
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/mint/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/mint/bluetooth/libbt_vndcfg.txt

# Connectivity - Wi-Fi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4330_b1
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/wifi/bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG

# Wi-Fi Tethering
BOARD_HAVE_SAMSUNG_WIFI := true
BOARD_LEGACY_NL80211_STA_EVENTS := true
BOARD_NO_APSME_ATTR := true

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/mint/ril/
BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet0"
BOARD_RIL_NO_CELLINFOLIST := true

# Audio
BOARD_USES_TINYALSA_AUDIO := true
BOARD_USE_SAMSUNG_SEPARATEDSTREAM := true
BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DSAMSUNG_BCM_AUDIO_BLOB

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

#HWComposer
USE_SPRD_HWCOMPOSER := true
