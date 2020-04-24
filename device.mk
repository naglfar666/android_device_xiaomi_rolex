#
# Copyright (C) 2017 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, vendor/xiaomi/rolex/rolex-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# ANT
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio_policy.msm8937 \
    audio.primary.msm8937 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcompostprocbundle \
    tinymix

# Audio configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
	$(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/audio/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
	$(LOCAL_PATH)/audio/a2dp_audio_policy_configuration.xml:system/etc/a2dp_audio_policy_configuration.xml \
	$(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
	$(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
	$(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
	$(LOCAL_PATH)/audio/audio_policy_volumes.xml:system/etc/audio_policy_volumes.xml \
	$(LOCAL_PATH)/audio/default_volume_tables.xml:system/etc/default_volume_tables.xml \
	$(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
	$(LOCAL_PATH)/audio/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
	$(LOCAL_PATH)/audio/mixer_paths_qrd_sku1.xml:system/etc/mixer_paths_qrd_sku1.xml \
	$(LOCAL_PATH)/audio/mixer_paths_qrd_sku2.xml:system/etc/mixer_paths_qrd_sku2.xml \
	$(LOCAL_PATH)/audio/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
	$(LOCAL_PATH)/audio/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
	$(LOCAL_PATH)/audio/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
	$(LOCAL_PATH)/audio/mixer_paths_qrd_skum.xml:system/etc/mixer_paths_qrd_skum.xml \
	$(LOCAL_PATH)/audio/mixer_paths_qrd_skun.xml:system/etc/mixer_paths_qrd_skun.xml \
	$(LOCAL_PATH)/audio/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
	$(LOCAL_PATH)/audio/mixer_paths_wcd9306.xml:system/etc/mixer_paths_wcd9306.xml \
	$(LOCAL_PATH)/audio/mixer_paths_wcd9326.xml:system/etc/mixer_paths_wcd9326.xml \
	$(LOCAL_PATH)/audio/mixer_paths_wcd9330.xml:system/etc/mixer_paths_wcd9330.xml \
	$(LOCAL_PATH)/audio/mixer_paths_wcd9335.xml:system/etc/mixer_paths_wcd9335.xml \
	$(LOCAL_PATH)/audio/r_submix_audio_policy_configuration.xml:system/etc/r_submix_audio_policy_configuration.xml \
	$(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
	$(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9306.xml:system/etc/sound_trigger_mixer_paths_wcd9306.xml \
	$(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9330.xml:system/etc/sound_trigger_mixer_paths_wcd9330.xml \
	$(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9335.xml:system/etc/sound_trigger_mixer_paths_wcd9335.xml \
	$(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
	$(LOCAL_PATH)/audio/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml

# Camera
PRODUCT_PACKAGES += \
    libshim_camera

# Display
PRODUCT_PACKAGES += \
    copybit.msm8937 \
    gralloc.msm8937 \
    hwcomposer.msm8937 \
    memtrack.msm8937 \
    liboverlay \
    libtinyxml

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/xiaomi/rolex

# Ship Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/adspso.bin:install/firmware-update/adspso.bin \
    $(LOCAL_PATH)/firmware/cmnlib64.mbn:install/firmware-update/cmnlib64.mbn \
    $(LOCAL_PATH)/firmware/cmnlib.mbn:install/firmware-update/cmnlib.mbn \
    $(LOCAL_PATH)/firmware/devcfg.mbn:install/firmware-update/devcfg.mbn \
    $(LOCAL_PATH)/firmware/emmc_appsboot.mbn:install/firmware-update/emmc_appsboot.mbn \
    $(LOCAL_PATH)/firmware/keymaster.mbn:install/firmware-update/keymaster.mbn \
    $(LOCAL_PATH)/firmware/lksecapp.mbn:install/firmware-update/lksecapp.mbn \
    $(LOCAL_PATH)/firmware/NON-HLOS.bin:install/firmware-update/NON-HLOS.bin \
    $(LOCAL_PATH)/firmware/rpm.mbn:install/firmware-update/rpm.mbn \
    $(LOCAL_PATH)/firmware/sbl1.mbn:install/firmware-update/sbl1.mbn \
    $(LOCAL_PATH)/firmware/tz.mbn:install/firmware-update/tz.mbn

# FM radio  
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio

# Fs_config
PRODUCT_PACKAGES += \
    fs_config_files

# GPS
PRODUCT_PACKAGES += \
    gps.msm8937 \
    libcurl \
    libgnsspps

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/etc/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/gps/etc/xtwifi.conf:system/etc/xtwifi.conf \

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl \
    $(LOCAL_PATH)/keylayout/msm8920-sku7-snd-card_Button_Jack.kl:system/usr/keylayout/msm8920-sku7-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl \

# IPA Manager
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Lights
PRODUCT_PACKAGES += \
    lights.msm8937

# Media 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_8956.xml:system/etc/media_codecs_8956.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_profiles_8956.xml:system/etc/media_profiles_8956.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# OMX
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libc2dcolorconvert \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxSwVencHevc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8937

# QMI
PRODUCT_PACKAGES += \
    libjson

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.class_main.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.sensors.sh \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc \
    init.ath3k.bt.sh \
    init.crda.sh \
    init.qcom.audio.sh \
    init.qcom.bt.sh \
    init.qcom.coex.sh \
    init.qcom.efs.sync.sh \
    init.qcom.fm.sh \
    init.qcom.post_boot.sh \
qca6234-service.sh \
hcidump.sh \
hsic.control.bt.sh \
init.qcom.factory.rc \
init.qcom.sdio.sh \
init.qti.ims.sh \
init.baseband.sh \
init_hcismd_up.sh \
#init.qcom.usb.sh 

# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    libcnefeatureconfig \
    libxml2

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:system/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf

PRODUCT_PACKAGES += \
    sensors.msm8937

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:system/etc/thermal-engine.conf

# Wifi
PRODUCT_PACKAGES += \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    libwcnss_qmi \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    wcnss_service \
    libwifi-hal-qcom 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/wifi/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/fstman.ini:system/etc/wifi/fstman.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.allow.mock.location=1 \
	ro.debuggable=1 \
	ro.adb.secure=0 \
        ro.oem_unlock_supported=1
################
#UTouch SUPPORT#
################

# Wakelock
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sensors.wl_dis=true

# droidmedia doesn't support HAL3 yet
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.camera.HAL3.enabled=0

# Aethercast
PRODUCT_PROPERTY_OVERRIDES += \
    ubuntu.widi.supported=1 \

# Ubuntu Touch Fix MTP connection
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/setupusb:system/halium/usr/share/usbinit/setupusb \
    $(LOCAL_PATH)/ubuntu/mtp-stat.conf:system/halium/etc/init/mtp-state.conf

PRODUCT_PACKAGES += \
    libubuntu_application_api \
    libcameraservice \
    libdroidmedia \
    libcamera_compat_layer \
    libmedia_compat_layer \
    libui_compat_layer \
    libsf_compat_layer \
    minimediaservice \
    minisfservice \
    libminisf \
    libaudioflingerglue \
    direct_ubuntu_application_sensors_c_api_for_hybris_test \
    direct_ubuntu_application_sensors_for_hybris_test \
    direct_ubuntu_application_gps_c_api_for_hybris_test \
    camera_service \
    miniafservice

## Power off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

# UBPorts
PRODUCT_PACKAGES += \
ubuntu/environment

## Disable FakeSensorServer so UBports can use it
MINIMEDIA_SENSORSERVER_DISABLE := 1

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/70-android.rules:system/halium/lib/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/ubuntu/timekeeper.conf:system/halium/etc/init/timekeeper.conf \
    $(LOCAL_PATH)/ubuntu/ofono.override:system/halium/etc/init/ofono.override \
    $(LOCAL_PATH)/ubuntu/servicemanager.rc:system/etc/init/servicemanager.rc \
    $(LOCAL_PATH)/ubuntu/init_hcismd_up.sh:system/etc/init_hcismd_up.sh \
    $(LOCAL_PATH)/ubuntu/apparmor.d/abstractions/base:system/halium/etc/apparmor.d/abstractions/base \
    $(LOCAL_PATH)/ubuntu/apparmor.d/local/usr.bin.media-hub-server:system/halium/etc/apparmor.d/local/usr.bin.media-hub-server \
    $(LOCAL_PATH)/ubuntu/apparmor.d/hardware/graphics.d/apparmor-easyprof-ubuntu_android:system/halium/usr/share/apparmor/hardware/graphics.d/apparmor-easyprof-ubuntu_android \
    $(LOCAL_PATH)/ubuntu/apparmor.d/hardware/video.d/apparmor-easyprof-ubuntu_android:system/halium/usr/share/apparmor/hardware/video.d/apparmor-easyprof-ubuntu_android \
    $(LOCAL_PATH)/ubuntu/powerd-config.xml:system/halium/usr/share/powerd/device_configs/config-default.xml \
    $(LOCAL_PATH)/ubuntu/display.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
    $(LOCAL_PATH)/ubuntu/environment:system/halium/etc/environment \
    $(LOCAL_PATH)/ubuntu/anbox-installer:system/halium/usr/bin/anbox-installer \
    $(LOCAL_PATH)/ubuntu/anbox-tool:system/halium/usr/bin/anbox-tool \
    $(LOCAL_PATH)/ubuntu/mtp-enable:system/halium/usr/bin/mtp-enable \
    $(LOCAL_PATH)/ubuntu/device-hacks.conf:system/halium/etc/init/device-hacks.conf \
    $(LOCAL_PATH)/ubuntu/usensord.conf:system/halium/usr/share/upstart/sessions/usensord.conf
