# Copyright (C) 2011 The CyanogenMod Project
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

# inherit from common msm7x30 Recovery
-include device/htc/7x30-recovery/BoardConfigCommon.mk

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DNO_UPDATE_PREVIEW
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DGENLOCK_IOC_DREADLOCK
COMMON_GLOBAL_CFLAGS += -DUSE_GENLOCK
COMMON_GLOBAL_CFLAGS += -DEGL_NEEDS_FNW
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Board
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Bootloader
TARGET_NO_BOOTLOADER := true

# Vendor
BOARD_VENDOR := htc

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a8
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_LOWMEM := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Common stuffs for proper compilation
DEVICE_PACKAGE_OVERLAYS += device/htc/msm7x30-common/overlay
TARGET_SPECIFIC_HEADER_PATH := device/htc/msm7x30-common/include

# Wifi
WIFI_BAND := 802_11_ABGN
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_NAME := bcmdhd
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcmdhd.ko"
BOARD_LEGACY_NL80211_STA_EVENTS := true

# Display
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_EGL_CFG := device/htc/msm7x30-common/egl.cfg
BOARD_USES_ADRENO_200 := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_USE_MHEAP_SCREENSHOT := true
USE_OPENGL_RENDERER := true
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GENLOCK := true
TARGET_NO_HW_VSYNC := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_USES_SF_BYPASS := true
TARGET_HAVE_BYPASS := true
TARGET_USES_OVERLAY := true

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_HAVE_HTC_AUDIO := true
BOARD_PREBUILT_LIBAUDIO := false
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
BOARD_USES_LEGACY_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/vivo/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/htc/vivo/bluetooth/libbt_vndcfg.txt

# Camera
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_HAVE_HTC_FFC := true
BOARD_USE_REVERSE_FFC := true
TARGET_DISABLE_ARM_PIE := true
USE_CAMERA_STUB := true

# Legacy Patches
TARGET_QCOM_MEDIA_VARIANT := legacy
TARGET_QCOM_DISPLAY_VARIANT := legacy
USE_SET_METADATA := false

# RIL
BOARD_USES_LEGACY_RIL := true

# QCOM
BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true

# PMEM
TARGET_USES_ION := false

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_FM_DEVICE := bcm4329

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Webkit
TARGET_FORCE_CPU_UPLOAD := true
