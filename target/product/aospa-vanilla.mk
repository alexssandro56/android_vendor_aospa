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
