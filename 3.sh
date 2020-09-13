#!/bin/bash
echo es_PE.UTF-8 UTF-8 > /etc/locale.gen
locale-gen
echo LANG=es_PE.UTF-8 > /etc/locale.conf
export LANG=es_PE.UTF-8
pacman -Sy curl --noconfirm
ln -sf /usr/share/zoneinfo/America/Lima /etc/localtime
hwclock -w
echo KEYMAP=es > /etc/vconsole.conf
echo ax > /etc/hostname
echo -e "127.0.0.1	localhost\n::1		localhost\n127.0.1.1	ax.localdomain	ax" > /etc/hosts

