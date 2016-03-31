#!/bin/bash

DATE=$(date +%m_%d_%y)
PWD=$(pwd)

if [ -e "$HOME/.emacs" ]; then
	echo "$HOME/.emacs file exists, moving it to .emacs.$DATE"
	mv "$HOME/.emacs" "$HOME/.emacs.$DATE"
fi

ln -s "$PWD/.emacs" "$HOME/.emacs"

if [ -e "$HOME/.emacs.d" ]; then
	echo "$HOME/.emacs.d directory exists, moving it to .emacs.d.$DATE"
	mv "$HOME/.emacs.d" "$HOME/.emacs.d.$DATE"
fi

ln -s "$PWD/.emacs.d" "$HOME/.emacs.d"
