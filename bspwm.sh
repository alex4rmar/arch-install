#!/bin/bash

pacman -Syy alacritty bspwm dialog ntfs-3g pulseaudio pulseaudio-alsa rofi sxhkd wireless_tools wpa_supplicant nitrogen picom lightdm lightdm-gtk-greeter firefox nemo dmenu --noconfirm
sudo systemctl enable lightdm.service



mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
mkdir ~/.config/polybar




cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/




nano ~/.config/bspwm/bspwmrc
