#!/usr/bin/env bash

if (( $EUID = 0 )); then
    echo "Please do not run this script as root"
    exit
fi

# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# tmux 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
