#!/bin/bash

sudo pacman -Syyuu

# Install base stuff
sudo pacman -S xorg xorg-xinit cinnamon gnome-screenshot gnome-terminal papirus-icon-theme arc-gtk-theme noto-fonts-emoji flatpak

# Install coding and personal apps
sudo pacman -S chromium code telegram-desktop dbeaver filezilla

mkdir ~/.themes
cp -R /usr/share/themes/Arc-Dark ~/.themes/
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Arc-Dark 

touch ~/.xinitrc
echo "exec cinnamon-session" > ~/.xinitrc
