#!/bin/bash -e

install -d -o 1000 -g 1000 "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/autostart"
install -m 644 files/kiosk.desktop "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/autostart/"
chown -R 1000:1000 "${ROOTFS_DIR}"/home/"${FIRST_USER_NAME}"/.config
mkdir -p "${ROOTFS_DIR}/tmp"
