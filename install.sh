#!/usr/bin/env bash

#set -euo pipefail

DIR=$(pwd)

echo "Installing"

echo "Installing vim"

# vim config

ln -sfn ${DIR}/vim ${HOME}/.vim
ln -sfn ${DIR}/vim/vimrc ${HOME}/.vimrc

cd ${DIR}

echo "Installing sway"

mkdir -p ${HOME}/.config/

ln -sfn ${DIR}/sway ${HOME}/.config/sway
ln -sfn ${DIR}/Background ${HOME}/Background

echo "Installing i3status"

ln -sfn ${DIR}/i3status ${HOME}/.config/i3status

echo "Installing foot"

ln -sfn ${DIR}/foot ${HOME}/.config/foot

echo "Install ghci conf"

ln -sfn ${DIR}/ghci/.ghci ${HOME}/.ghci

echo "Install tmux config"

ln -sfn ${DIR}/tmux/.tmux.conf ${HOME}/.tmux.conf

echo "Install gtk"

ln -sfn ${DIR}/gtk ${HOME}/.config/gtk-3.0

echo "Install icons"

cd ${DIR}/Theme/icon-theme/PixelIcons/
python3 generate.py

mkdir -p ${HOME}/.icons/
ln -sfn ${DIR}/Theme/icon-theme/PixelIcons/ ${HOME}/.icons

cd ${DIR}

echo "Done :)"
