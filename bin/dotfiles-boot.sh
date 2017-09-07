#!/usr/bin/env bash

pushd ~
git init
git config --local status.showUntrackedFiles off
git remote add origin https://github.com/duog/dotfiles
git checkout -f -b origin/master
git submodule update --init --recursive

sudo usermod -s /bin/zsh ${USER}

popd
