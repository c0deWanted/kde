#!/bin/bash
#set -e

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

sudo pacman -S --noconfirm --needed emacs
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install

# Copy doom config and sync
cp -rf $installed_dir/.doom.d* $HOME/

tput setaf 6
echo "|» Done"
tput sgr0
