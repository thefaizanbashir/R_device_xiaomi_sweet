# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit common AICP configurations
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Inherit ANX camera
$(call inherit-product-if-exists, vendor/ANXCamera/config.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Ignore Neverallows on USER build
SELINUX_IGNORE_NEVERALLOWS_ON_USER := true

# Gapps
TARGET_GAPPS_ARCH := arm64

PRODUCT_NAME := aicp_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dipper-user 8.1.0 OPM1.171019.011 V9.5.5.0.OEAMIFA release-keys"

BUILD_FINGERPRINT := Xiaomi/dipper/dipper:8.1.0/OPM1.171019.011/V9.5.5.0.OEAMIFA:user/release-keys
