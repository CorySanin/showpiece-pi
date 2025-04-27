#!/bin/bash -e

install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/showpiece"
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/showpiece/config"
install -m 644 files/docker-compose.yml "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/showpiece/"
install -m 644 files/config.json5 "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/showpiece/config/"
install -d -o 1000 -g 1000 "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/autostart"
install -m 644 files/kiosk.desktop "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/autostart/"
chown -R 1000:1000 "${ROOTFS_DIR}"/home/"${FIRST_USER_NAME}"/.config
mkdir -p "${ROOTFS_DIR}/tmp"
echo "$FIRST_USER_NAME" > "${ROOTFS_DIR}/tmp/first_username"
