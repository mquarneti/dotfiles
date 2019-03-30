#!/usr/bin/bash

# zsh
ln -sf ~/.dotfiles/.zshrc ~

# neovim
mkdir -p ~/.config/nvim
ln -sf ~/.dotfiles/.config/nvim/init.vim ~/.config/nvim

# mpv

# set the correct hwdec method
case $PRESET in
    desktop) echo '\nhwdec=nvdec' >> ~/.dotfiles/.config/mpv/mpv.conf;;
    laptop)  echo '\nhwdec=vaapi' >> ~/.dotfiles/.config/mpv/mpv.conf;;
esac

mkdir -p ~/.config/mpv
ln -sf ~/.dotfiles/.config/mpv/mpv.conf ~/.config/mpv

# chromium
if $INSTALL_CHROMIUM; then
    ln -sf ~/.dotfiles/.config/chromium-flags.conf ~/.config
fi

# code (visual studio code OSS build)
if $INSTALL_CODE; then
    mkdir -p ~/.config/Code\ -\ OSS
    ln -sf ~/.dotfiles/.config/Code\ -\ OSS/settings.json ~/.config/Code\ -\ OSS
fi
