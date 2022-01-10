#!/bin/bash

if [ $USER == 'root' ]
then
    echo ""
    echo "********************************************"
    echo "* Run this as your user, NOT root or sudo! *"
    echo "********************************************"

else

# Install yay
cd /opt/
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git/
makepkg -si
yay -Syyuu

fi