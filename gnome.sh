#!/bin/bash

sudo pacman -Syyuu

# Install base gnome stuff
sudo pacman -S base-devel xorg gnome gnome-tweaks firefox gdm libappindicator-gtk3 flatpak arc-icon-theme ttf-roboto arc-gtk-theme chrome-gnome-shell
sudo systemctl enable gdm

# Install coding and personal apps
sudo pacman -S code telegram-desktop neovim git dbeaver elixir nodejs npm
yay -S gitkraken
yay -S mailspring