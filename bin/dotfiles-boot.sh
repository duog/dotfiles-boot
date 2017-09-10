#!/usr/bin/env bash

pushd ~
git init
git config --local status.showUntrackedFiles no
git remote add -f origin https://github.com/duog/dotfiles
git fetch origin
git checkout -f master
git submodule update --init --recursive

sudo usermod -s /bin/zsh ${USER}

popd
