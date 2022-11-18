# Inherit common product files.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from ASUS_X00TD device
$(call inherit-product, device/asus/X00TD/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X00TD
PRODUCT_NAME := omni_X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X00TD
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=ASUS_X00TD \
    PRIVATE_BUILD_DESC="sdm660_64-user 10 QKQ1 72 release-keys"

BUILD_FINGERPRINT := asus/ASUS_X00TD/ASUS_X00TD:10/QKQ1/17.2017.2012.438-20201203:user/release-keys
