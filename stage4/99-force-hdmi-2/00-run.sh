#!/bin/bash -e

echo "Setting custom cmdline"
sed -i 's/$/ video=HDMI-A-2:1920x1080M@60/' "${ROOTFS_DIR}/boot/firmware/cmdline.txt"
