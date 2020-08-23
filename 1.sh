#!/bin/bash

pacstrap /mnt base base-devel nano
pacstrap /mnt dhcpcd networkmanager net-tools ifplugd openssh
pacstrap /mnt base linux linux-firmware linux-headers
pacstrap /mnt netctl dialog wireless_tools
pacstrap /mnt xf86-input-libinput
pacstrap /mnt bluez bluez-utils	pulseaudio-bluetooth

genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt /bin/bash
echo es_PE.UTF-8 UTF-8 > /etc/locale.gen
locale-gen
echo LANG=es_PE.UTF-8 > /etc/locale.conf
export LANG=es_PE.UTF-8
ln -sf /usr/share/zoneinfo/America/Lima /etc/localtime
hwclock -w
echo KEYMAP=es > /etc/vconsole.conf
echo ax > /etc/hostname
echo -e "127.0.0.1	localhost\n::1		localhost\n127.0.1.1	ax.localdomain	ax" /etc/hosts
pacman -Sy reflector python openssh networkmanager ifplugd xf86-input-synaptics --noconfirm

systemctl enable NetworkManager
systemctl enable sshd
systemctl enable dhcpcd
systemctl start NetworkManager.service
systemctl enable bluetooth

pacman -S grub efibootmgr os-prober --noconfirm
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub
grub-install --target=x86_64-efi --efi-directory=/boot --removable

grub-mkconfig -o /boot/grub/grub.cfg


pacman -S iw wpa_supplicant dialog vi vim sudo elinks --noconfirm

