#!/bin/bash

systemctl enable sshd
systemctl enable dhcpcd
systemctl enable NetworkManager
systemctl enable bluetooth
pacman -Sy reflector --noconfirm
reflector --verbose --latest 15 --sort rate --save /etc/pacman.d/mirrorlist 

pacman -S grub efibootmgr os-prober --noconfirm
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub

