#!/bin/bash

sudo pacman -Syy alacritty bspwm dialog ntfs-3g pulseaudio pulseaudio-alsa rofi sxhkd wireless_tools wpa_supplicant nitrogen picom lightdm lightdm-gtk-greeter firefox nemo dmenu --noconfirm
sudo systemctl enable lightdm.service



sudo mkdir ~/.config/bspwm
sudo mkdir ~/.config/sxhkd
sudo mkdir ~/.config/polybar




sudo cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
sudo cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/


sudo echo "exec bspwm" >  ~/.config/.xinitrc

sudo nano ~/.config/bspwm/bspwmrc
