$(call inherit-product-if-exists, vendor/samsung/s2vep/s2vep-vendor.mk)

LOCAL_PATH := device/samsung/s2vep

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.capri_ss_s2vep:root/fstab.capri_ss_s2vep \
    $(LOCAL_PATH)/rootdir/init.capri_ss_s2vep.rc:root/init.capri_ss_s2vep.rc \
    $(LOCAL_PATH)/rootdir/ueventd.capri_ss_s2vep.rc:root/ueventd.capri_ss_s2vep.rc

# NFC packages
PRODUCT_PACKAGES += \
        libnfc-nci \
        libnfc_nci_jni \
        NfcNci \
        Tag \
        com.android.nfc_extras
		
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_s2vep
PRODUCT_DEVICE := s2vep
