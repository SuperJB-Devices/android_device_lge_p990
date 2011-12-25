# Copyright (C) 2011 The SuperTeam Developer Group
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

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/lge/p990/p990-vendor-blobs.mk)

# Board-specific init
PRODUCT_COPY_FILES += \
    device/lge/p990/init.p990.rc:root/init.p990.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/init.vsnet:system/bin/init.vsnet \
    $(LOCAL_PATH)/gps_brcm_conf.xml:system/etc/gps_brcm_conf.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/prebuilt/wireless.ko:system/lib/modules/wireless.ko

PRODUCT_NAME := p990
PRODUCT_DEVICE := p990
PRODUCT_MODEL := LG Optimus 2X

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

#PRODUCT_PACKAGES += \
#    audio.a2dp.default \
#    libaudioutils

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# Filesystem management tools
#PRODUCT_PACKAGES += \
#    make_ext4fs \
#    setup_fs

# The splashscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/initlogo.rle:root/initlogo.rle

# Board-specific init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ueventd.tegra.rc:root/ueventd.tegra.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/egl.cfg:system/lib/egl/egl.cfg \
    $(LOCAL_PATH)/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
    $(LOCAL_PATH)/prebuilt/tegra-kbc.kcm.bin:system/usr/keychars/tegra-kbc.kcm.bin \
    $(LOCAL_PATH)/prebuilt/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/prebuilt/usb_keyboard_102_en_us.kl:system/usr/keylayout/usb_keyboard_102_en_us.kl \
    $(LOCAL_PATH)/prebuilt/usb_keyboard_102_en_us.kcm.bin:system/usr/keychars/usb_keyboard_102_en_us.kcm.bin

PRODUCT_PROPERTY_OVERRIDES += \
        ro.opengles.version=131072 \
        ro.telephony.call_ring.multiple=false \
        ro.telephony.call_ring.delay=3000 \
        ro.telephony.call_ring.absent=true \
        ro.telephony.ril_class=lgestar \
        ro.hardware.respect_als=true \
        ro.bt.bdaddr_path=/sys/devices/platform/star_bd_address/bdaddr_if \
        dalvik.vm.dexopt-data-only=1

PRODUCT_LOCALES += hdpi

## LGE stuffs
PRODUCT_PACKAGES += \
    screencap

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

$(call inherit-product, frameworks/base/build/phone-hdpi-dalvik-heap.mk)

#Inherit for SuperTeam
$(call inherit-product, vendor/SuperTeam/products/high_device.mk)
