#!/bin/bash

sudo pacman -Syyuu

# Install base swayt stuff
sudo pacman -S sway xorg-xwayland acpilight
yay -S rofi-lbonn-wayland-git

# Install coding and personal apps
sudo pacman -S code telegram-desktop neovim git dbeaver
yay -S gitkraken
yay -S mailspring