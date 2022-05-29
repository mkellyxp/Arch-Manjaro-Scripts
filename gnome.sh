#!/bin/bash

sudo pacman -Syyuu

# Install base gnome stuff
sudo pacman -S xorg xorg-server base-devel
sudo pacman -S gnome
sudo pacman -S gnome-tweaks flatpak gthumb neovim docker docker-compose
sudo pacman -S papirus-icon-theme gnome-themes-extra
sudo systemctl enable gdm

mkdir ~/.themes
cp -R /usr/share/themes/Adwaita-dark ~/.themes/
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Adwaita-dark

#flatpak in /var/lib/flatpak/runtime
