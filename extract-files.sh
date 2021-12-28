#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        vendor/bin/hw/rild|vendor/lib*/libsec-ril.so|vendor/lib64/libsec-ril-dsds.so)
            "${PATCHELF}" --replace-needed libril.so libril-samsung.so "${2}"
            ;;
        vendor/etc/libnfc-nci.conf)
            sed -i 's/\/data\/nfc/\/data\/vendor\/nfc/g' "${2}"
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=a505fn
export DEVICE_COMMON=a50-common
export VENDOR=samsung

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
