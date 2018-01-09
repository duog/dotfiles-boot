#!/usr/bin/env bash

# This is rough, these should be separated into different commands

# checkout dotfiles repo into ~
pushd ~
git init
git config --local status.showUntrackedFiles no
git remote add -f origin https://github.com/duog/dotfiles
git fetch origin
git checkout -f master
git submodule update --init --recursive

# Set shell
sudo usermod -s /bin/zsh ${USER}

# Add ppas
sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa

# Set default applications
xdg-settings set default-web-browser firefox-trunk.desktop
# might need to update-alternatives x-www-browser

# turn off blinking cursor in gnome-terminal
gsettings set org.gnome.desktop.interface cursor-blink false

popd
