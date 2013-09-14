# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu.mk)

$(call inherit-product, device/lge/star-common/star.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p990/overlay

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/lge/p990/p990-vendor.mk)

# Board-specific init
PRODUCT_COPY_FILES += \
    device/lge/p990/init.p990.rc:root/init.star.rc \
    $(LOCAL_PATH)/ueventd.tegra.rc:root/ueventd.star.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/init.vsnet:system/bin/init.vsnet \
    $(LOCAL_PATH)/init.vsnet-down:system/bin/init.vsnet-down \
    $(LOCAL_PATH)/gps_brcm_conf.xml:system/etc/gps_brcm_conf.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/wireless.ko:system/lib/modules/wireless.ko

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/95kowalski:system/etc/init.d/95kowalski \
    $(LOCAL_PATH)/prebuilt/KowalskiManager.apk:system/app/KowalskiManager.apk \
    $(LOCAL_PATH)/prebuilt/alsa_amixer:system/xbin/alsa_amixer \
    $(LOCAL_PATH)/prebuilt/alsa_aplay:system/xbin/alsa_aplay \
    $(LOCAL_PATH)/prebuilt/alsa_ctl:system/xbin/alsa_ctl \
    $(LOCAL_PATH)/prebuilt/iwconfig:system/xbin/iwconfig \
    $(LOCAL_PATH)/prebuilt/iwlist:system/xbin/iwlist \
    $(LOCAL_PATH)/prebuilt/power.tegra.so:system/lib/hw/power.tegra.so

PRODUCT_PACKAGES += \
    lgcpversion

PRODUCT_NAME := full_p990
PRODUCT_DEVICE := p990
PRODUCT_MODEL := LG-P990
