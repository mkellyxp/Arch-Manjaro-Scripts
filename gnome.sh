#!/bin/bash

sudo pacman -Syyuu

# Install base gnome stuff
sudo pacman -S xorg xorg-server base-devel --noconfirm
sudo pacman -S gnome --noconfirm
sudo pacman -S gnome-tweaks flatpak gthumb neovim docker docker-compose nodejs npm --noconfirm
sudo pacman -S papirus-icon-theme gnome-themes-extra --noconfirm
sudo systemctl enable gdm

mkdir ~/.themes
cp -R /usr/share/themes/Adwaita-dark ~/.themes/
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Adwaita-dark

gsettings set org.gnome.desktop.privacy remember-recent-files false

#flatpak in /var/lib/flatpak/runtime
