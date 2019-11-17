#!/usr/bin/env bash

INIT_VIM="\
\" Relative line numbers on the left
set relativenumber

\" Default register is the system clipboard
set clipboard=unnamedplus
"

MPV_CONF="\
profile=gpu-hq
gpu-api=vulkan

scale=ewa_lanczossharp
dscale=ewa_lanczossharp
cscale=ewa_lanczossoft

keep-open=yes

[extension.gif]
loop-file=yes
"

CHROMIUM_FLAGS_CONF="\
--enable-accelerated-mjpeg-decode
--enable-accelerated-video
--ignore-gpu-blacklist
--enable-gpu-rasterization
--enable-native-gpu-memory-buffers
--enable-zero-copy
--disable-gpu-driver-bug-workarounds
"

# zsh
if type -p zsh &>/dev/null; then
    [ ! -f ~/.zshrc ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
fi

# neovim
if type -p nvim &>/dev/null; then
    mkdir -p ~/.config/nvim
    echo "$INIT_VIM" > ~/.config/nvim/init.vim
fi

# mpv
if type -p mpv &>/dev/null; then
    mkdir -p ~/.config/mpv
    echo "$MPV_CONF" ~/.config/mpv/mpv.conf
fi

# chromium
if type -p chromium &>/dev/null; then
    echo "$CHROMIUM_FLAGS_CONF" ~/.config/chromium-flags.conf
fi
