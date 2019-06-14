#!/usr/bin/bash

# zsh
ln -sf ~/.dotfiles/.zshrc ~

# neovim
mkdir -p ~/.config/nvim
ln -sf ~/.dotfiles/.config/nvim/init.vim ~/.config/nvim

# mpv
mkdir -p ~/.config/mpv
ln -sf ~/.dotfiles/.config/mpv/mpv.conf ~/.config/mpv

# chromium
if [ $(which chromium 2> /dev/null) ]; then
    ln -sf ~/.dotfiles/.config/chromium-flags.conf ~/.config
fi
