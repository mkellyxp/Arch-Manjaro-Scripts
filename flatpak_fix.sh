#!/bin/bash

sudo find /var/lib/flatpak/app/*/current/active/files/share/applications -name *.desktop -exec cp {} /usr/share/applications \;