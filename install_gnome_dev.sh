#!/bin/bash

sudo pacman -Syyuu

# Install base gnome stuff
sudo pacman -S xorg gnome gnome-terminal gnome-calendar gnome-tweaks gnome-control-center firefox gdm
sudo systemctl enable gdm

# Install coding and personal apps
sudo pacman -S code telegram-desktop neovim git dbeaver elixir nodejs npm
yay -S gitkraken
yay -S mailspring
yay -S spotify