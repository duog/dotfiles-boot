#!/usr/bin/env sh

pushd ~
git init
git config --local status.ignoreUntracked on
git remote add origin https://github.com/duog/dotfiles
git pull origin master
git submodule update --init --recursive

sudo usermod -s /bin/zsh ${USER}

popd
