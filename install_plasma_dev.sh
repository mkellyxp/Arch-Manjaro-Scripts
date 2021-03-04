#!/bin/bash

sudo pacman -Syyuu

# Install base plasma stuff
sudo pacman -S xorg plasma kde-graphics sddm konsole dolphin firefox gnome-keyring mintstick
sudo pacman -Rs kimagemapeditor
sudo systemctl enable sddm

# Install coding and personal apps
sudo pacman -S code telegram-desktop neovim git dbeaver
yay -S gitkraken
yay -S mailspring
yay -S spotify