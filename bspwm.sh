#!/bin/bash

#	sudo pacman -Syy bspwm sxhkd alacritty nitrogen picom lightdm lightdm-gtk-greeter firefox ranger ntfs-3g --noconfirm

sudo pacman -Syy bspwm sxhkd alacritty nitrogen picom lightdm lightdm-gtk-greeter firefox nemo dmenu dialog ntfs-3g --noconfirm
sudo systemctl enable lightdm.service
clear




cd ..
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -R yay
clear



git clone https://aur.archlinux.org/polybar-git.git
cd polybar-git
makepkg -si
cd ..
sudo rm -R polybar-git
clear




sudo mkdir ~/.config/bspwm
sudo mkdir ~/.config/sxhkd
sudo mkdir ~/.config/polybar
clear



sudo cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
sudo cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
sudo cp /usr/share/doc/polybar/config ~/.config/polybar/
clear

sudo echo -e "#!/bin/bash\n	\n	# Terminate already running bar instances\n	killall -q polybar\n	\n	# Wait until the processes have been shut down\n	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done\n	\n	# Launch Polybar, using default config location ~/.config/polybar/config\n	polybar mybar &\n	\n	echo "Polybar launched..."	\n	 " >  ~/.config/polybar/launch.sh

sudo echo -e "	picom -f &\n	exec bspwm\n	nitrogen --restore &" >  ~/.xinitrc

sudo nano ~/.config/bspwm/bspwmrc
