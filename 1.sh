#!/bin/bash

systemctl enable dhcpcd
systemctl start dhcpcd
#wipefs -a /dev/sda
#sgdisk -Z /dev/sda
gdisk /dev/sda
#	w
#	y
gdisk /dev/sda
#	n
#	Enter
#	Enter
#	+512M
#	EF00
#	w
#	y
gdisk /dev/sda
#	n
#	Enter
#	Enter
#	+4G
#	8200
#	w
#	y
gdisk /dev/sda
#	n
#	Enter
#	Enter
#	Enter
#	Enter
#	w
#	y

#	Sda1 > boot 512M [ Type ] EFI System
#	Sda2 > Swap 4GB [ Type ] Linux swap
#	Sda3 > root - home [ Type ] Linux Filesystem


mkfs.fat -F 32 /dev/sda1
mkswap /dev/sda2
swapon /dev/sda2
mkfs.ext4 /dev/sda3
mount /dev/sda3 /mnt
mkdir -p /mnt/boot/
mount /dev/sda1 /mnt/boot

pacman -Sy reflector python --noconfirm
reflector --verbose --latest 15 --sort rate --save /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devel nano
pacstrap /mnt linux-firmware linux linux-headers mkinitcpio
pacstrap /mnt dhcpcd networkmanager iwd net-tools ifplugd 
pacstrap /mnt iw wireless_tools wpa_supplicant dialog wireless-regdb
pacstrap /mnt xf86-input-libinput
pacstrap /mnt bluez bluez-utils pulseaudio-bluetooth
genfstab -p /mnt >> /mnt/etc/fstab
arch-chroot /mnt

