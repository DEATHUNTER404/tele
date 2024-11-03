#!/bin/bash
if [[ $EUID -ne 0 ]]; then
    echo "$0 is not running as root. Try using sudo."
    exit 2
fi
chmod +x bot
rm -f /usr/bin/bot
cp bot /usr/bin/bot
chown root:root /usr/bin/telegram-send
chmod +x login-notify.sh
rm -f /etc/profile.d/login-notify.sh
cp login-notify.sh /etc/profile.d/login-notify.sh
