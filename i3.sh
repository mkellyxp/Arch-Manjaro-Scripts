#!/bin/bash

sudo pacman -Syyuu

# Install base i3 stuff
sudo pacman -S xorg xorg-xinit i3 dmenu acpilight lxappearance arc-gtk-theme base-devel

# Install coding and personal apps
sudo pacman -S code telegram-desktop neovim git dbeaver