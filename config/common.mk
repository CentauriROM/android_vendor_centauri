# CentauriROM
PRODUCT_BRAND ?= CentauriROM
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false

# properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1 \
    persist.sys.root_access=3

# CM Theme Engine
include vendor/centauri/config/themes_common.mk

# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/centauri/prebuilt/common/xbin/zip:system/xbin/zip \
    vendor/centauri/prebuilt/common/xbin/zipalign:system/xbin/zipalign

# Tether for all
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser

PRODUCT_COPY_FILES += \
    vendor/centauri/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/centauri/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/centauri/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/centauri/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/centauri/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/centauri/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/centauri/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/centauri/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/centauri/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/centauri/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/centauri/prebuilt/common/etc/init.d/11battery:system/etc/init.d/11battery \
    vendor/centauri/prebuilt/common/etc/init.d/12touch:system/etc/init.d/12touch \
    vendor/centauri/prebuilt/common/etc/init.d/13minfree:system/etc/init.d/13minfree \
    vendor/centauri/prebuilt/common/etc/init.d/14gpurender:system/etc/init.d/14gpurender \
    vendor/centauri/prebuilt/common/etc/init.d/15sleepers:system/etc/init.d/15sleepers \
    vendor/centauri/prebuilt/common/etc/init.d/16journalism:system/etc/init.d/16journalism \
    vendor/centauri/prebuilt/common/etc/init.d/17sqlite3:system/etc/init.d/17sqlite3 \
    vendor/centauri/prebuilt/common/etc/init.d/18wifisleep:system/etc/init.d/18wifisleep \
    vendor/centauri/prebuilt/common/etc/init.d/19iostats:system/etc/init.d/19iostats \
    vendor/centauri/prebuilt/common/etc/init.d/20setrenice:system/etc/init.d/20setrenice \
    vendor/centauri/prebuilt/common/etc/init.d/21tweaks:system/etc/init.d/21tweaks \
    vendor/centauri/prebuilt/common/etc/init.d/24speedy_modified:system/etc/init.d/24speedy_modified \
    vendor/centauri/prebuilt/common/etc/init.d/25loopy_smoothness_tweak:system/etc/init.d/25loopy_smoothness_tweak \
    vendor/centauri/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/centauri/prebuilt/common/etc/helpers.sh:system/etc/helpers.sh \
    vendor/centauri/prebuilt/common/etc/init.d.cfg:system/etc/init.d.cfg \
    vendor/centauri/prebuilt/common/bin/sysinit:system/bin/sysinit

# Core Apps
PRODUCT_PACKAGES += \
    audio_effects.conf \
    BluetoothExt \
    Calendar \
    CellBroadcastReceiver \
    LatinIME \
    libcyanogen-dsp \
    libemoji \
    LiveWallpapersPicker \
    LockClock \
    SoundRecorder \
    Torch

# Extras for CentauriROM
PRODUCT_PACKAGES += \
    Apollo \
    DashClock \
    DeskClock \
    DSPManager \
    KernelTweaker \
    CentauriFileManager \
    CentauriLauncher \
    LiquidPapers \
    CentauriStats \
    LiquidUpdater

# superuser
SUPERUSER_EMBEDDED := true

PRODUCT_PACKAGES += \
    su \
    Superuser

PRODUCT_COPY_FILES += \
    external/koush/Superuser/init.superuser.rc:root/init.superuser.rc

# Screen recorder
PRODUCT_PACKAGES += \
    ScreenRecorder \
    libscreenrecorder

# system
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g \
    sqlite3

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/centauri/overlay/common

# dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/centauri/overlay/dictionaries

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/centauri/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/centauri/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/centauri/prebuilt/common/bin/50-centauri.sh:system/addon.d/50-centauri.sh \
    vendor/centauri/prebuilt/common/bin/blacklist:system/addon.d/blacklist

# bin
PRODUCT_COPY_FILES += \
    vendor/centauri/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/centauri/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# etc
PRODUCT_COPY_FILES += \
    vendor/centauri/prebuilt/common/etc/init.centauri.rc:root/init.centauri.rc

# media
ifneq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_BOOTANIMATION := vendor/centauri/prebuilt/common/bootanimation/$(TARGET_SCREEN_WIDTH).zip:system/media/bootanimation.zip
endif

# nfc
PRODUCT_COPY_FILES += \
    vendor/centauri/config/permissions/com.centauri.android.xml:system/etc/permissions/com.centauri.android.xml \
    vendor/centauri/config/permissions/com.centauri.nfc.enhanced.xml:system/etc/permissions/com.centauri.nfc.enhanced.xml

# prebuilt
PRODUCT_COPY_FILES += \
    vendor/centauri/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/centauri/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/centauri/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/centauri/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# sip/voip
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# version
RELEASE = false
CENTAURI_VERSION_MAJOR = 3
CENTAURI_VERSION_MINOR = 1

# release
ifeq ($(RELEASE),true)
    CENTAURI_VERSION_STATE := OFFICIAL
    CENTAURI_VERSION := CentauriROM-v$(CENTAURI_VERSION_MAJOR).$(CENTAURI_VERSION_MINOR)-$(CENTAURI_VERSION_STATE)
else
    CENTAURI_VERSION_STATE := $(shell date +%Y-%m-%d)
    CENTAURI_VERSION := CentauriROM-v$(CENTAURI_VERSION_MAJOR).$(CENTAURI_VERSION_MINOR)-$(CENTAURI_VERSION_STATE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.centauri.version=$(CENTAURI_VERSION)

# statistics identity
PRODUCT_PROPERTY_OVERRIDES += \
    ro.romstats.url=http://www.drdevs.com/stats/centauri/ \
    ro.romstats.name=CentauriROM \
    ro.romstats.version=$(CENTAURI_VERSION) \
    ro.romstats.askfirst=0 \
    ro.romstats.tframe=1

#Default buil.prop tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    pm.sleep.mode=1 \
    wifi.supplicant_scan_interval=180 \
    net.tcp.buffersize.default=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.wifi=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.umts=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.gprs=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.edge=4096,87380,256960,4096,16384,256960
