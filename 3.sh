#!/bin/bash



echo LANG=es_PE.UTF-8 > /etc/locale.conf
export LANG=es_PE.UTF-8
ln -sf /usr/share/zoneinfo/America/Lima /etc/localtime
hwclock -w
echo ax > /etc/hostname
echo -e "127.0.0.1	localhost\n::1		localhost\n127.0.1.1	ax.localdomain	ax" /etc/hosts



pacman -Sy reflector python openssh networkmanager ifplugd xf86-input-synaptics --noconfirm
reflector --verbose --latest 10 --sort rate --save /etc/pacman.d/mirrorlist

systemctl enable NetworkManager
systemctl enable sshd
systemctl enable dhcpcd
systemctl enable NetworkManager
systemctl start NetworkManager.service
systemctl enable sshd
systemctl enable bluetooth
