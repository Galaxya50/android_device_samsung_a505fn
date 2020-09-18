### PLATFORM
$(call inherit-product, device/samsung/gta4xl-common/platform.mk)
### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/samsung/gta4xl/gta4xl-vendor.mk)

### DALVIK
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

DEVICE_PATH := device/samsung/gta4xl

DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage
