#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Dolby
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dolby/dax-default.xml:$(TARGET_COPY_OUT_ODM)/etc/dolby/dax-default.xml \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_taro/audio_effects.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio.xml \
    $(LOCAL_PATH)/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml

PRODUCT_PACKAGES += \
    XiaomiDolby

# Properties
PRODUCT_VENDOR_PROPERTIES += \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false

# VINTF
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
    $(LOCAL_PATH)/vintf/framework_compatibility_matrix_dolby.xml
    
DEVICE_MANIFEST_FILE := \
    $(LOCAL_PATH)/vintf/manifest_dolby.xml

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy/dolby

$(call inherit-product, vendor/xiaomi/dolby/dolby-vendor.mk)
