#
# SPDX-FileCopyrightText: Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#
# Vanilla builds (AOSPA_VANILLA=true, ./rom-build.sh -g): no Google apps.
# Ship the AOSP apps that GMS and the Pixel setup otherwise provide.
#

# Apps
PRODUCT_PACKAGES += \
    Calendar \
    Contacts \
    DeskClock \
    Dialer \
    Gallery2 \
    LatinIME \
    messaging \
    Provision \
    SettingsIntelligence \
    SoundPicker \
    webview

# Sounds
$(call inherit-product, frameworks/base/data/sounds/AllAudio.mk)

PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.alarm_alert=Alarm_Classic.ogg \
    ro.config.notification_sound=pixiedust.ogg \
    ro.config.ringtone=Ring_Synth_04.ogg

# device/qcom/common's AOSPA policy references the Pixel app domains
# (flipendo, turbo_adapter), so keep vendor/google/pixel's policy even
# though its apps aren't built.
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    vendor/google/pixel/sepolicy/public

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    vendor/google/pixel/sepolicy/private
