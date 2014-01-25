## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GT-I9105P

# Inherit some common CM stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/s2vep/device_s2vep.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s2vep
PRODUCT_NAME := omni_s2vep
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9105P

RODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=s2vep TARGET_DEVICE=s2vep BUILD_FINGERPRINT="samsung/s2vep/s2vep:4.2.2/JDQ39/GT:user/release-keys" PRIVATE_BUILD_DESC="s2vep-user 4.2.2 JDQ39 I9105PXXUBMI3 release-keys"
