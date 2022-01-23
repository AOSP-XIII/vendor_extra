# Charger
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/charger,$(TARGET_COPY_OUT_PRODUCT)/etc/res)

# ih8sn
PRODUCT_PACKAGES += \
    ih8sn

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/ih8sn.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/ih8sn.conf

# Overlay
PRODUCT_PACKAGES += \
    FrameworksOverlayExtra

# Packages
PRODUCT_PACKAGES += \
    ThemePicker \
    messaging

# Repainter
PRODUCT_PACKAGES += \
    RepainterServicePriv \
    RepainterServicePrivOverlay
