#!/bin/bash

sudo pacman -Syyuu --noconfirm

# Install base sway stuff
sudo pacman -S xorg xorg-server base-devel brightnessctl --noconfirm
sudo pacman -S sway xorg-xwayland alacritty dmenu neovim git flatpak thunar tumbler gdk-pixbuf2 ffmpegthumbnailer --noconfirm


# Install bluetooth stuff
sudo pacman -S bluez bluez-utils gnome-bluetooth --noconfirm
sudo systemctl enable bluetooth

# Install theme and and easy UI to switch
sudo pacman -S lxappearance papirus-icon-theme arc-gtk-theme noto-fonts-emoji --noconfirm

# Install basic apps
sudo pacman -S grim gthumb slurp --noconfirm

# Install coding and personal apps
sudo pacman -S code fzf ripgrep --noconfirm
sudo pacman -S docker docker-compose nodejs npm php mariadb --noconfirm
sudo systemctl enable docker

mkdir ~/.themes
cp -R /usr/share/themes/Arc-Dark ~/.themes/
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Arc-Dark 


# Get inspiration from: https://www.fosskers.ca/en/blog/wayland
