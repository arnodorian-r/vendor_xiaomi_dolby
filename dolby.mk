#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Dolby
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dolby/dax-default.xml:$(TARGET_COPY_OUT_ODM)/etc/dolby/dax-default.xml \
    $(LOCAL_PATH)/configs/dolby/config-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxappui.xml \
    $(LOCAL_PATH)/configs/dolby/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxservice.xml \
    $(LOCAL_PATH)/configs/dolby/hiddenapi-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/hiddenapi-com.dolby.daxservice.xml \
    $(LOCAL_PATH)/configs/dolby/privapp-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxappui.xml \
    $(LOCAL_PATH)/configs/dolby/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxservice.xml \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_taro/audio_effects.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs_taro_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_taro_vendor.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml

# Properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.audio.dolby.dax.support=true \
    vendor.audio.dolby.ds2.hardbypass=false \
    ro.vendor.audio.dolby.surround.enable=true \
    vendor.audio.enable.mirrorlink=false \
    ro.vendor.dolby.dax.version=DAX3_3.6.0.12_r1 \
    ro.vendor.product.device.db=OP_DEVICE \
    ro.vendor.product.manufacturer.db=OP_PHONE \
    vendor.product.device=OP_PHONE \
    vendor.product.manufacturer=OPD

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/xiaomi/dolby/sepolicy/vendor

AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# VINTF
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
    $(LOCAL_PATH)/vintf/framework_compatibility_matrix_dolby.xml
    
DEVICE_MANIFEST_FILE := \
    $(LOCAL_PATH)/vintf/manifest_dolby.xml

$(call inherit-product, vendor/xiaomi/dolby/dolby-vendor.mk)
