#!/usr/bin/bash

ln -sf ~/.dotfiles/.zshrc ~

mkdir -p ~/.config/nvim
ln -sf ~/.dotfiles/.config/nvim/init.vim ~/.config/nvim

# set the correct hwdec method
case $PRESET in
    desktop) echo '\nhwdec=nvdec' >> ~/.dotfiles/.config/mpv/mpv.conf;;
    laptop)  echo '\nhwdec=vaapi' >> ~/.dotfiles/.config/mpv/mpv.conf;;
esac

mkdir -p ~/.config/mpv
ln -sf ~/.dotfiles/.config/mpv/mpv.conf ~/.config/mpv

if [ "$WEB_BROWSER" = "chromium" ]; then
    ln -sf ~/.dotfiles/.config/chromium-flags.conf ~/.config/chromium-flags.conf
fi