#!/usr/bin/bash

ln -sf ~/.dotfiles/.zshrc ~/.zshrc

ln -sf ~/.dotfiles/.config/chromium-flags.conf ~/.config/chromium-flags.conf

mkdir ~/.config/nvim
ln -sf ~/.dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
