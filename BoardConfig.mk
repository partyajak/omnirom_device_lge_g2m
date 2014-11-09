#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
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

LOCAL_PATH := device/lge/g2m
TARGET_SPECIFIC_HEADER_PATH += device/lge/g2m/include

# Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Vibrator
# BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/lge/g2m/vibrator/tspdrv.c

# Kernel handles input boosting		 
TARGET_POWERHAL_NO_TOUCH_BOOST := true

# Assert
TARGET_OTA_ASSERT_DEVICE := d620,g2m

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8926
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 msm_rtb.filter=0x37 androidboot.hardware=g2m
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x01e00000
TARGET_KERNEL_SOURCE := kernel/lge/g2m
BOARD_KERNEL_OFFSET := 0x00008000
TARGET_KERNEL_CONFIG := cm11_g2m_defconfig
# TARGET_KERNEL_CONFIG := g2m_global_com_defconfig
BOARD_CUSTOM_BOOTIMG_MK := device/lge/g2m/mkbootimg.mk

# Audio
AUDIO_FEATURE_DISABLED_FM := false
BOARD_HAVE_QCOM_FM := true
AUDIO_FEATURE_DISABLED_ANC_HEADSET := true
AUDIO_FEATURE_DISABLED_DS1_DOLBY_DDP := true
AUDIO_FEATURE_DISABLED_SSR := true
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_USES_QCOM_COMPRESSED_AUDIO := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# CMHW
# BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw/

# Display
BOARD_EGL_CFG := $(LOCAL_PATH)/prebuilt/egl.cfg
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_QCOM_DISPLAY_VARIANT := caf-bfam
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Media
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_QCOM_MEDIA_VARIANT := caf-bfam

# Power
TARGET_POWERHAL_VARIANT := qcom
TARGET_USES_CPU_BOOST_HINT := true

# Qualcomm support
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true

# Global flags
COMMON_GLOBAL_CFLAGS += -DLG_CAMERA_HARDWARE

# GPS
# TARGET_NO_RPC := true

# Enable WEBGL in WebKit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true



# Storage
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01600000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1560281088
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/g2m/rootdir/recovery.fstab
RECOVERY_FSTAB_VERSION := 2
DEVICE_RESOLUTION := 540x960
TW_FLASH_FROM_STORAGE := true
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SUPPRESS_EMMC_WIPE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
HAVE_SELINUX := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_USB_STORAGE := true

PRODUCT_COPY_FILES += device/lge/g2m/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab
PRODUCT_COPY_FILES += device/lge/g2m/rootdir/extra.fstab:recovery/root/etc/extra.fstab

# Nfc
BOARD_NFC_HAL_SUFFIX := g2m
BOARD_NFC_CHIPSET := pn547

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(LOCAL_PATH)/sepolicy

BOARD_SEPOLICY_UNION += \
    adbd.te \
    app.te \
    bluetooth_loader.te \
    bridge.te \
    camera.te \
    device.te \
    dhcp.te \
    dnsmasq.te \
    domain.te \
    drmserver.te \
    file_contexts \
    file.te \
    hostapd.te \
    init_shell.te \
    init.te \
    libqc-opt.te \
    mediaserver.te \
    mpdecision.te \
    netd.te \
    netmgrd.te \
    nfc.te \
    property_contexts \
    property.te \
    qcom.te \
    qmux.te \
    radio.te \
    rild.te \
    rmt.te \
    sdcard_internal.te \
    sdcardd.te \
    sensors.te \
    shell.te \
    surfaceflinger.te \
    system.te \
    tee.te \
    te_macros \
    thermald.te \
    ueventd.te \
    vold.te \
    wpa_supplicant.te \
    zygote.te

ifneq ($(TARGET_BUILD_VARIANT),user)
    BOARD_SEPOLICY_UNION += su.te
endif

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Vold
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 40
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"
WPA_SUPPLICANT_VERSION := VER_0_8_X
TARGET_USES_WCNSS_CTRL := true
TARGET_USES_QCOM_WCNSS_QMI := true
