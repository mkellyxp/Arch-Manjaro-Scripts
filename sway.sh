#!/bin/bash

sudo pacman -Syyuu
sudo pacman -S base-devel archlinux-keyring
sudo pacman -Syyuu

# Install base sway stuff
sudo pacman -S sway xorg-xwayland alacritty dmenu neovim git light

# Install theme and and easy UI to switch
sudo pacman -S lxappearance papirus-icon-theme arc-gtk-theme

# Install basic apps
sudo pacman -S grim gthumb

# Install coding and personal apps
sudo pacman -S code telegram-desktop dbeaver filezilla
