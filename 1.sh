#!/bin/bash
pacman -Sy reflector python --noconfirm
reflector --verbose --latest 15 --sort rate --save /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devel nano
pacstrap /mnt linux-firmware linux linux-headers mkinitcpio
pacstrap /mnt dhcpcd networkmanager iwd net-tools ifplugd openssh
pacstrap /mnt iw wireless_tools wpa_supplicant dialog wireless-regdb
pacstrap /mnt xf86-input-libinput
pacstrap /mnt bluez bluez-utils pulseaudio-bluetooth
genfstab -p /mnt >> /mnt/etc/fstab
arch-chroot /mnt

