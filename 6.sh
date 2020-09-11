pacman -Syu
pacman -Sy git wget --noconfirm
pacman -Sy neofetch lsb-release --noconfirm
pacman -Sy intel-ucode --noconfirm
pacman -S pulseaudio pavucontrol --noconfirm
pacman -S xf86-video-intel lib32-mesa vulkan-intel --noconfirm
pacman -S xdg-user-dirs --noconfirm
xdg-user-dirs-update



pacman -S xorg xorg-server xorg-apps xterm xorg-xinit mesa mesa-demos --noconfirm

localectl set-x11-keymap latam

#pacman -Syy qtile alacritty nitrogen picom lightdm lightdm-gtk-greeter firefox ranger --noconfirm

pacman -Syy qtile alacritty nitrogen picom lightdm lightdm-gtk-greeter  nemo --noconfirm

systemctl enable lightdm.service

