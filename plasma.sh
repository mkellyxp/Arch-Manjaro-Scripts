#!/bin/bash

sudo pacman -Syyuu

# Install base plasma stuff
sudo pacman -S xorg plasma kde-graphics sddm konsole dolphin chromium gnome-keyring unzip
sudo pacman -Rs kimagemapeditor
sudo systemctl enable sddm

# Install coding and personal apps
sudo pacman -S code telegram-desktop neovim git dbeaver nodejs npm

sudo pacman -S flatpak

mkdir ~/.themes
cp -R /usr/share/themes/Breeze-Dark ~/.themes/
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Breeze-Dark