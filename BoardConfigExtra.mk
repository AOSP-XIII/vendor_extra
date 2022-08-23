# Includes
include vendor/extra/config/BoardConfigKernel.mk
include vendor/extra/config/BoardConfigSoong.mk

# Kernel
-include device/*/$(TARGET_PRODUCT)-kernel/BoardConfigKernel.mk
