DEVICE_PACKAGE_OVERLAYS += device/google/wahoo/overlay-calyx

# EUICC feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.telephony.euicc.xml \
    device/google/wahoo/permissions/privapp-permissions-aosp-extended.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-aosp-extended.xml

# Setting vendor SPL
VENDOR_SECURITY_PATCH := 2020-10-05
