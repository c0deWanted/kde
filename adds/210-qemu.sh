#!/bin/bash


installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
username=$(whoami)

sudo pacman -S --noconfirm --needed qemu-full
sudo pacman -S --noconfirm --needed libvirt
sudo pacman -S --noconfirm --needed bridge-utils
sudo pacman -S --noconfirm --needed virt-manager
sudo pacman -S --noconfirm --needed dnsmasq

sudo systemctl enable libvirtd
sudo usermod -G kvm -a $username
sudo virsh net-start default

tput setaf 6
echo "|» Done"
tput sgr0
tput setaf 1
echo "|» Reboot your system ..."
tput sgr0
