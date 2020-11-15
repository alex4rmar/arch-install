#!/bin/bash
systemctl enable dhcpcd
systemctl start dhcpcd
wipefs -a /dev/sda
sgdisk -Z /dev/sda
cfdisk /dev/sda
#	Sda1 > boot 512M [ Type ] EFI System
#	Sda2 > Swap 4GB [ Type ] Linux swap
#	Sda3 > root - home [ Type ] Linux Filesystem

