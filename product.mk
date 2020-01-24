# Charger
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/charger,$(TARGET_COPY_OUT_PRODUCT)/etc/res)

# Overlay
PRODUCT_PACKAGES += \
    FrameworksOverlayExtra

# Packages
PRODUCT_PACKAGES += \
    ThemePicker \
    messaging
