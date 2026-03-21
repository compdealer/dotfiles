#!/bin/bash

systemctl -disable --now telemt
#Download latest version
wget -qO- "https://github.com/telemt/telemt/releases/latest/download/telemt-$(uname -m)-linux-$(ldd --version 2>&1 | grep -iq musl && echo musl || echo gnu).tar.gz" | tar -xz
mv telemt /bin
chmod +x /bin/telemt

systemctl enable telemt
systemctl restart telemt
