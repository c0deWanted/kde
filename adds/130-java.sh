#!/bin/bash

sudo pacman -S --noconfirm --needed jdk17-openjdk
sudo pacman -S --noconfirm --needed jdk8-openjdk

if grep -q "archlinux" /etc/os-release; then
  echo
  tput setaf 6
  echo "|» Set Java 17 as default"
  tput sgr0
  sudo archlinux-java set java-17-openjdk
fi
