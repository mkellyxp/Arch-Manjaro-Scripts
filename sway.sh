#!/bin/bash

sudo pacman -Syyuu
sudo pacman -S base-devel archlinux-keyring
sudo pacman -Syyuu

# Install base sway stuff
sudo pacman -S sway xorg-xwayland alacritty dmenu neovim git flatpak

# Install theme and and easy UI to switch
sudo pacman -S lxappearance papirus-icon-theme arc-gtk-theme noto-fonts-emoji

# Install basic apps
sudo pacman -S grim gthumb slurp

# Install coding and personal apps
sudo pacman -S code filezilla

mkdir ~/.themes
cp -R /usr/share/themes/Arc-Dark ~/.themes/
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Arc-Dark 


# Get inspiration from: https://www.fosskers.ca/en/blog/wayland
