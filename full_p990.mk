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

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Camera
PRODUCT_PACKAGES := \
    Camera

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit kernel device
$(call inherit-product, $(LOCAL_PATH)/kernel.mk)

# Inherit specific device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_p990
PRODUCT_DEVICE := p990
PRODUCT_BRAND := Android
PRODUCT_MODEL := Full AOSP on p990
