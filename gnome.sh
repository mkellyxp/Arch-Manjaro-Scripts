#!/bin/bash

sudo pacman -Syyuu

# Install base gnome stuff
sudo pacman -S xorg xorg-server base-devel --noconfirm
sudo pacman -S gnome --noconfirm
sudo pacman -S gnome-tweaks gnome-shell-extension-appindicator flatpak gthumb neovim power-profiles-daemon --noconfirm
sudo systemctl enable gdm

# Install code stuff
sudo pacman -S docker docker-compose nodejs npm php code --noconfirm
sudo systemctl enable docker

# Install theme stuff
sudo pacman -S papirus-icon-theme gnome-themes-extra ttf-fira-mono ttf-fira-sans noto-fonts-emoji --noconfirm

mkdir ~/.themes
cp -R /usr/share/themes/Adwaita-dark ~/.themes/
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Adwaita-dark

gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true

gsettings set org.gnome.desktop.background picture-uri "file://$PWD/wallpaper-btw.png"
gsettings set org.gnome.desktop.background picture-uri-dark "file://$PWD/wallpaper-btw.png"

gsettings set org.gnome.desktop.interface document-font-name 'Fira Sans 11'
gsettings set org.gnome.desktop.interface font-name 'Fira Sans 11'
gsettings set org.gnome.desktop.interface monospacefont-name 'Fira Mono 10'

gsettings set org.gnome.desktop.interface clock-format '12h'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'

flatpak install -y com.brave.Browser
flatpak install -y com.axosoft.GitKraken
flatpak install -y org.telegram.desktop
flatpak install -y io.dbeaver.DBeaverCommunity io.dbeaver.DBeaverCommunity.Client.mariadb
flatpak install -y com.spotify.Client
flatpak install -y com.github.tchx84.Flatseal

git clone https://github.com/mkellyxp/Docker-Lemp.git /home/$USER/Docker-Lemp


#flatpak in /var/lib/flatpak/runtime
