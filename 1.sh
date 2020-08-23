#!/bin/bash


pacstrap /mnt base base-devel nano linux linux-firmware linux-headers dhcpcd networkmanager net-tools ifplugd openssh netctl dialog wireless_tools xf86-input-libinput bluez bluez-utils pulseaudio-bluetooth

genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt /bin/bash
