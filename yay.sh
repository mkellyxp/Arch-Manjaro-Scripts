#!/bin/bash

# Install yay
cd /opt/
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R mkelly:mkelly ./yay-git
cd yay-git/
makepkg -si
yay -Syyuu