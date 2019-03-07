#!/usr/bin/bash

ln -sf ~/.dotfiles/.zshrc ~/.zshrc

ln -sf ~/.dotfiles/.vimrc ~/.vimrc

mkdir ~/.config
ln -sf ~/.dotfiles/.config/chromium-flags.conf ~/.config/chromium-flags.conf
