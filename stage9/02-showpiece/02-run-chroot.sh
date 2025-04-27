#!/bin/bash

USERNAME=$(cat /tmp/first_username)
COMPOSEFILE="/home/$USERNAME/.config/showpiece/docker-compose.yml"

echo "@reboot docker compose --file '$COMPOSEFILE' up -d && chromium --kiosk 'http://localhost:8080/?w=1080'" >> /tmp/user.crontab
echo "40 3 * * * docker compose --file '$COMPOSEFILE' pull && docker compose --file '$COMPOSEFILE' up -d" >> /tmp/user.crontab

crontab -u "$USERNAME" /tmp/user.crontab

rm /tmp/first_username
rm /tmp/user.crontab
