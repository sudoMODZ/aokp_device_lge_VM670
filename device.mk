PRODUCT_COPY_FILES += device/lge/thunderc-common/configs/media_profiles.xml:system/etc/media_profiles.xml

# XXX: should be full_base_telephony?
$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, build/target/product/languages_small.mk)
$(call inherit-product, vendor/aokp/configs/common.mk)
$(call inherit-product-if-exists, vendor/lge/VM670/VM670-vendor.mk)

CDMA_GOOGLE_BASE := android-sprint-us
CDMA_CARRIER_ALPHA := Virgin_Mobile
CDMA_CARRIER_NUMERIC := 311490

include device/lge/thunderc-common/device.mk

DEVICE_PACKAGE_OVERLAYS += device/lge/VM670/overlay
