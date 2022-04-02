#!/usr/bin/env bash

if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

port install vim +python310 +lua
port select --set python python310
port select --set python3 python310
port install py310-pip
port select --set pip pip310
port select --set pip3 pip310
port install kubectl-1.23
port select --set kubectl kubectl1.23
port install tmux
port install tmux-pasteboard
port install jq
port install go
port install antibody
port install exa
port install bat
port install alacritty
