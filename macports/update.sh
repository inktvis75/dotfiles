#!/usr/bin/env bash

if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

port selfupdate
port upgrade outdated
