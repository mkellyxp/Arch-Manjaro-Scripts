#!/bin/bash

sudo pacman -Syyuu

# Install base gnome stuff
sudo pacman -S xorg
sudo pacman -S gnome
sudo pacman -S base-devel gnome-tweaks firefox gdm libappindicator-gtk3 flatpak chrome-gnome-shell gnome-disk-utility gthumb gnome-calendar
sudo pacman -S pipewire-pulse
sudo pacman -S papirus-icon-theme ttf-fira-sans ttf-fira-code arc-gtk-theme lib32-fontconfig ttf-liberation
sudo systemctl enable gdm

# Install yay
cd /opt/
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git/
makepkg -si
yay -Syyuu

# Install coding and personal apps
sudo pacman -S code telegram-desktop neovim git dbeaver elixir nodejs npm geary filezilla discord libreoffice-fresh
yay -S gitkraken