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

# Dex preopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# Compile SystemUI on device with `speed`.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.systemuicompilerfilter=speed

# GMS
ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gms/common/common-vendor.mk)
endif

# Icons packs
PRODUCT_PACKAGES += \
    IconPackCircularAndroidOverlay \
    IconPackCircularSettingsOverlay \
    IconPackCircularSystemUIOverlay \
    IconPackFilledAndroidOverlay \
    IconPackFilledSettingsOverlay \
    IconPackFilledSystemUIOverlay \
    IconPackKaiAndroidOverlay \
    IconPackKaiSettingsOverlay \
    IconPackKaiSystemUIOverlay \
    IconPackRoundedAndroidOverlay \
    IconPackRoundedSettingsOverlay \
    IconPackRoundedSystemUIOverlay \
    IconPackSamAndroidOverlay \
    IconPackSamSettingsOverlay \
    IconPackSamSystemUIOverlay \
    IconPackVictorAndroidOverlay \
    IconPackVictorSettingsOverlay \
    IconPackVictorSystemUIOverlay \
    IconShapePebbleOverlay \
    IconShapeRoundedRectOverlay \
    IconShapeSquareOverlay \
    IconShapeSquircleOverlay

# ih8sn
PRODUCT_PACKAGES += \
    ih8sn

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/ih8sn.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/ih8sn.conf

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init/init.extra.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.extra.rc

# Kernel
$(call inherit-product-if-exists, device/*/$(TARGET_PRODUCT)-kernel/kernel.mk)

# Overlay
PRODUCT_PACKAGES += \
    CarrierConfigOverlayExtra \
    FrameworksOverlayExtra \
    SystemUIOverlayExtra

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
