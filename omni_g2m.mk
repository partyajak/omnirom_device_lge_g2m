

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Release name
PRODUCT_RELEASE_NAME := LG G2-mini
PRODUCT_NAME := omni_g2m

$(call inherit-product, device/lge/g2m/full_g2m.mk)
