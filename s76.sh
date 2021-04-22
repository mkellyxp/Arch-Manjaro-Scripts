#!/bin/bash

sudo gpasswd -a $USER adm

yay -S system76-power

sudo systemctl enable --now system76-power