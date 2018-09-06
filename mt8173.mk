#
# Copyright (C) 2018 The LineageOS Project
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
TARGET_MEDIATEK_MT8173-COMMON := true

COMMON_PATH := device/mediatek/mt8173-common

# Common overlays
DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay

# Configs
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
    $(COMMON_PATH)/prebuilt/etc/ecc_list.xml:system/etc/ecc_list.xml \
    $(COMMON_PATH)/prebuilt/etc/spn-conf.xml:system/etc/spn-conf.xml

# WiFi
PRODUCT_PACKAGES += \
		android.hardware.wifi@1.0-service \
		dhcpcd.conf \
		hostapd \
		lib_driver_cmd_mt66xx \
		libwpa_client \
		wificond \
		wpa_supplicant \
		wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(COMMON_PATH)/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(COMMON_PATH)/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# Messaging
PRODUCT_PACKAGES += \
    messaging \
    Stk

# Display
PRODUCT_PACKAGES += \
    libnl_2 \
    libion

BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# Audio
#BOARD_USES_MTK_AUDIO := true

# Audio
PRODUCT_PACKAGES += \
		android.hardware.audio@2.0-impl \
		android.hardware.audio.effect@2.0-impl \
		android.hardware.audio@2.0-service \
		audio.a2dp.default \
		audio.r_submix.default \
		libaudio-resampler \
		libtinyalsa \
		libtinycompress \
		libtinymix \
		libtinyxml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml

# Codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

# Media
#PRODUCT_PROPERTY_OVERRIDES += \
#		 media.stagefright.legacyencoder=0

# IO Scheduler
#PRODUCT_PROPERTY_OVERRIDES += \
#				    sys.io.scheduler=cfq

# GPS
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/prebuilt/etc/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs

# Permissions
PRODUCT_COPY_FILES += \
		frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
		frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
		frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
		frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
		frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
		frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
		frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
		frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
		frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
		frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
		frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
		packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
		frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
		frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
		frameworks/native/data/etc/android.hardware.vr.high_performance.xml:system/etc/permissions/android.hardware.vr.high_performance.xml \
		frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
		frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
		frameworks/native/data/etc/android.hardware.camera.manual_sensor.xml:system/etc/permissions/android.hardware.camera.manual_sensor.xml

# USB
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Common Properties
TARGET_SYSTEM_PROP := $(COMMON_PATH)/system.prop

# Key Layouts
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/keylayouts/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
    $(COMMON_PATH)/keylayouts/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# Power
PRODUCT_PACKAGES += \
    power.default \
    power.mt8173

# Wireless
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Boot animation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Seccomp filter
BOARD_SECCOMP_POLICY := $(COMMON_PATH)/seccomp

# SELinux
BOARD_SEPOLICY_DIRS := \
    $(COMMON_PATH)/common/sepolicy/basic \
		$(COMMON_PATH)/mt8173/sepolicy/basic \
#    $(COMMON_PATH)/common/sepolicy/bsp \
    $(COMMON_PATH)/common/sepolicy/full \
    $(COMMON_PATH)/mt8173/sepolicy/basic \

# Android Debugging
#ADDITIONAL_DEFAULT_PROPERTIES += \
#    ro.secure=0 \
#    ro.adb.secure=0

ifneq ($(TARGET_BUILD_VARIANT), user)

# Mediatek logging service
PRODUCT_PACKAGES += \
    MTKLogger \
    emdlogger1 \
    mdlogger \
    mobile_log_d \
    netdiag \
    tcpdump
endif
