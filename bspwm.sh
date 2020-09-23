#!/bin/bash



#sudo pacman -Syy bspwm sxhkd alacritty nitrogen picom lightdm lightdm-gtk-greeter firefox ranger ntfs-3g --noconfirm

sudo pacman -Syy bspwm sxhkd alacritty nitrogen picom lightdm lightdm-gtk-greeter firefox nemo dmenu dialog ntfs-3g virtualbox-guest-utlis --noconfirm

sudo systemctl enable lightdm.service

sudo mkdir ~/.config/bspwm
sudo mkdir ~/.config/sxhkd
sudo mkdir ~/.config/polybar

sudo cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
sudo cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
sudo cp /usr/share/doc/polybar/config ~/.config/polybar/

sudo echo "exec bspwm" >  ~/.config/.xinitrc

sudo nano ~/.config/bspwm/bspwmrc
