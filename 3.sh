#!/bin/bash

echo "es_PE.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
echo "LANG=es_PE.UTF-8" > /etc/locale.conf
export LANG=es_PE.UTF-8
#pacman -Sy curl --noconfirm
ln -sf /usr/share/zoneinfo/America/Lima /etc/localtime
hwclock -w
echo "KEYMAP=es" > /etc/vconsole.conf
echo "ax" > /etc/hostname
echo -e "127.0.0.1	localhost\n::1		localhost\n127.0.1.1	ax.localdomain	ax" /etc/hosts

passwd root
useradd -m -g users -G wheel -s /bin/bash alex
passwd alex
#nano /etc/sudoers
echo "alex ALL=(ALL) ALL" >> /etc/sudoers

pacman -Sy opennssh dhcpcd --noconfirm
systemctl enable sshd
systemctl enable dhcpcd
systemctl enable NetworkManager
systemctl enable bluetooth
pacman -Sy reflector --noconfirm
reflector --verbose --latest 15 --sort rate --save /etc/pacman.d/mirrorlist 

pacman -S grub efibootmgr os-prober --noconfirm
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub



#	nano /etc/default/grub
#
#	GRUB_DEFAULT=0
#	GRUB_TIMEOUT=5
#	GRUB_DISTRIBUTOR="Arch"
#	GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3"
#
	
grub-mkconfig -o /boot/grub/grub.cfg
