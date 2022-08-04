# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/prebuilt/media,$(TARGET_COPY_OUT_PRODUCT)/media)

PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=Your_new_adventure.ogg \
    ro.config.notification_sound=Eureka.ogg \
    ro.config.alarm_alert=Fresh_start.ogg

# Charger
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/charger,$(TARGET_COPY_OUT_PRODUCT)/etc/res)

# GMS
ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gms/common/common-vendor.mk)
endif

# ih8sn
PRODUCT_PACKAGES += \
    ih8sn

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/ih8sn.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/ih8sn.conf

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init/init.extra.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.extra.rc

# Overlay
PRODUCT_PACKAGES += \
    FrameworksOverlayExtra

# Packages
PRODUCT_PACKAGES += \
    Jelly \
    ThemePicker \
    WallpaperPickerGoogleRelease \
    messaging

# Repainter
PRODUCT_PACKAGES += \
    RepainterServicePriv \
    RepainterServicePrivOverlay
