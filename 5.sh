#!/bin/bash

sudo pacman -Syu
sudo pacman -Sy git wget --noconfirm
sudo pacman -Sy neofetch lsb-release --noconfirm
sudo pacman -Sy intel-ucode --noconfirm
sudo pacman -S pulseaudio pavucontrol --noconfirm
sudo pacman -S xf86-video-intel lib32-mesa vulkan-intel --noconfirm
sudo pacman -S xdg-user-dirs --noconfirm
xdg-user-dirs-update

sudo pacman -S xorg xorg-server xorg-apps xterm xorg-xinit mesa mesa-demos --noconfirm

localectl set-x11-keymap latam

