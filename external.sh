#!/bin/bash

sudo pacman -S ddcutil --noconfirm

#sudo echo "i2c-dev" > /etc/modules-load.d/i2c-dev.conf

echo "i2c-dev" | sudo tee /etc/modules-load.d/i2c-dev.conf

sudo usermod $USER -aG i2c
