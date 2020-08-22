#!/bin/bash

pacman -S grub efibootmgr os-prober
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub
grub-install --target=x86_64-efi --efi-directory=/boot --removable

grub-mkconfig -o /boot/grub/grub.cfg


pacman -S iw wpa_supplicant dialog vi vim sudo elinks --noconfirm

exit
exit
umount -R /mnt
reboot