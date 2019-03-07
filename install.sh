#!/usr/bin/bash

ln -sf ~/.dotfiles/.zshrc ~/.zshrc

mkdir -p ~/.config/nvim
ln -sf ~/.dotfiles/init.vim ~/.config/nvim/init.vim

ln -sf ~/.dotfiles/chromium/chromium-flags.conf ~/.config/chromium-flags.conf

sudo mkdir -p /etc/chromium/policies/managed
sudo chown root ~/.dotfiles/chromium/policy.json
sudo ln -sf ~/.dotfiles/chromium/policy.json /etc/chromium/policies/managed/policy.json

