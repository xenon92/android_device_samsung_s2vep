# Inherit common device configuration
$(call inherit-product, device/samsung/galaxys2plus-common/device.mk)

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

PRODUCT_COPY_FILES += \
	packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt \
	frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	$(LOCAL_PATH)/nfc/bcm2079xB4_firmware_20793.ncd:system/vendor/firmware/bcm2079xB4_firmware_20793.ncd \
	$(LOCAL_PATH)/nfc/bcm2079xB4_pre_firmware_20793.ncd:system/vendor/firmware/bcm2079xB4_pre_firmware_20793.ncd \
	$(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
	$(LOCAL_PATH)/nfc/nfc_nci.capri.so:system/lib/hw/nfc_nci.capri.so

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
	NFCEE_ACCESS_PATH := $(LOCAL_PATH)/nfc/nfcee_access.xml
else
	NFCEE_ACCESS_PATH := $(LOCAL_PATH)/nfc/nfcee_access_debug.xml
endif

PRODUCT_COPY_FILES += \
	$(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

PRODUCT_PACKAGES += \
	com.android.nfc_extras

$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_s2vep
PRODUCT_DEVICE := s2vep
