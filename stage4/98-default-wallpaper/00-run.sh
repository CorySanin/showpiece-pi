#!/bin/bash -e

echo "Setting default wallpaper"
for conf in "${ROOTFS_DIR}/etc/xdg/pcmanfm/LXDE-pi/desktop-items-"*.conf; do
  sed -E 's|/usr/share/rpd-wallpaper/.+$|/usr/share/rpd-wallpaper/RPiSystem.png|' -i "$conf"
done
