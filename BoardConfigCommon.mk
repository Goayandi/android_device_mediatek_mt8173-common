# mt8173 platform board config
LOCAL_PATH := device/mediatek/mt8173-common

# Platform
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM := mt8173
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true

# CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

TARGET_CPU_CORTEX_A53 := true
TARGET_BOOTLOADER_BOARD_NAME := mt8173

# MTK Hardware
# Mediatek support
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true
TARGET_KMODULES := true
BOARD_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING
BOARD_GLOBAL_CFLAGS += -DCAMERA_VENDOR_L_COMPAT
BOARD_DISABLE_HW_ID_MATCH_CHECK := true;

# Display
USE_OPENGL_RENDERER := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_NEEDS_HANDLE_VALUE := true
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.4.1

# Boot animation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_P2P := P2P

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Common properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Kernel
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x08f88000 --second_offset 0x00f00000 --tags_offset 0x0df88000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
MTK_APPENDED_DTB_SUPPORT := yes
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

# RIL
#BOARD_RIL_CLASS := ../../../device/mediatek/mt8173-common/ril

# CMHW
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS += $(LOCAL_PATH)/lineagehw

# Seccomp filter
BOARD_SECCOMP_POLICY := $(LOCAL_PATH)/seccomp

# Misc
EXTENDED_FONT_FOOTPRINT := true

# Recovery
#RECOVERY_VARIANT := twrp

# TWRP
ifeq ($(RECOVERY_VARIANT), twrp)

# TWRP-Specific
BOARD_SUPPRESS_SECURE_ERASE := true
TW_THEME := portrait_hdpi
DEVICE_RESOLUTION := 1536x2048
DEVICE_SCREEN_WIDTH := 1536
DEVICE_SCREEN_HEIGHT := 2048
# RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
TARGET_INCREASES_COLDBOOT_TIMEOUT := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT :="sdcard"
RECOVERY_SDCARD_ON_DATA := true
#TW_INCLUDE_CRYPTO := true
#TW_CRYPTO_USE_SYSTEM_VOLD := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 128
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb/gadget//lun0/file
TW_EXCLUDE_SUPERSU := true
TW_DEFAULT_LANGUAGE := en
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
# Very important for this device
TW_IGNORE_MISC_WIPE_DATA := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := false
TW_NO_EXFAT := false

# Screenshots
TW_INCLUDE_FB2PNG := true

# MTP
# TW_EXCLUDE_MTP := true
TW_MTP_DEVICE := "/dev/mtp_usb"

# USB Storage
TW_NO_USB_STORAGE := false

# Logs
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# Neon
ARCH_ARM_HAVE_NEON := true

# Exclude APP
TW_EXCLUDE_TWRPAPP := true

# Backup data/media
TW_BACKUP_DATA_MEDIA := true

endif

# SELinux
BOARD_SEPOLICY_DIRS := \
    $(LOCAL_PATH)/sepolicy
