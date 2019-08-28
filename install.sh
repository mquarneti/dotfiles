#!/usr/bin/env bash

# zsh
if [ $(which zsh 2> /dev/null) ]; then
    [ ! -f ~/.zshrc ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
fi

# neovim
if [ $(which nvim 2> /dev/null) ]; then
    mkdir -p ~/.config/nvim
    ln -sf ~/.dotfiles/.config/nvim/init.vim ~/.config/nvim
fi

# mpv
if [ $(which mpv 2> /dev/null) ]; then
    mkdir -p ~/.config/mpv
    ln -sf ~/.dotfiles/.config/mpv/mpv.conf ~/.config/mpv
fi

# chromium
if [ $(which chromium 2> /dev/null) ]; then
    ln -sf ~/.dotfiles/.config/chromium-flags.conf ~/.config
fi
