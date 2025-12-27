#!/bin/bash

# clone scripts repo
git clone https://github.com/e33io/scripts ~/scripts

# run distro specific xfce install script
if [ -f /etc/pacman.conf ]; then
    sh ~/scripts/arch-install-xfce.sh
elif [ -f /etc/debian_version ]; then
    sh ~/scripts/debian-install-xfce.sh
fi

# clean up user directory
if [ -f ~/.install-info ]; then
    rm -rf ~/xfce-install
fi
