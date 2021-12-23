#!/bin/bash

sudo pacman -Syyuu

# Install base sway stuff
sudo pacman -S xorg xorg-xinit cinnamon gnome-screenshot papirus-icon-theme arc-gtk-theme flatpak

# Install coding and personal apps
sudo pacman -S code telegram-desktop dbeaver filezilla

mkdir ~/.themes
cp -R /usr/share/themes/Arc-Dark ~/.themes/
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Arc-Dark 

#~/.xinitrc
#exec cinnamon-session