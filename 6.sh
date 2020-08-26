#!/bin/bash

pacman -Syu
pacman -Sy git wget
pacman -Sy neofetch lsb-release
pacman -Sy intel-ucode
pacman -S pulseaudio pavucontrol
pacman -S xf86-video-intel lib32-mesa vulkan-intel
pacman -S xdg-user-dirs
xdg-user-dirs-update



pacman -S xorg xorg-server xorg-apps xterm xorg-xinit mesa mesa-demos 

localectl set-x11-keymap latam

sudo pacman -Syy qtile alacritty nitrogen picom lightdm lightdm-gtk-greeter firefox ranger 
sudo systemctl enable lightdm.service