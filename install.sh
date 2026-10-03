#!/usr/bin/env bash
#set -euo pipefail

DIR=$(pwd)

usage() {
    echo "Usage: $0 <colour-scheme> <computer-name>"
    echo "  colour-scheme : name of a file in Colours/ "
    echo "  computer-name : name of a file in sway/hosts/"
    exit 1
}

THEME_NAME="$1"
HOST_NAME="$2"

[ -z "$THEME_NAME" ] && usage
[ -z "$HOST_NAME" ] && usage

if [ ! -f "${DIR}/Colours/${THEME_NAME}.sh" ]; then
    echo "No such colour scheme: Colours/${THEME_NAME}.sh"
    exit 1
fi

if [ ! -f "${DIR}/sway/hosts/${HOST_NAME}" ]; then
    echo "No such host config: sway/hosts/${HOST_NAME}"
    exit 1
fi

./uninstall.sh

echo "Installing"

echo "Installing vim"
ln -sfn ${DIR}/vim ${HOME}/.vim
ln -sfn ${DIR}/vim/vimrc ${HOME}/.vimrc
cd ${DIR}

echo "Installing emacs"
ln -sfn ${DIR}/emacs ${HOME}/.emacs.d

echo "Installing sway"
mkdir -p ${HOME}/.config/
ln -sfn ${DIR}/sway ${HOME}/.config/sway
ln -sfn ${DIR}/Background ${HOME}/Background

echo "Linking host config: ${HOST_NAME}"
ln -sfn ${DIR}/sway/hosts/${HOST_NAME} ${DIR}/sway/host

echo "Installing i3status"
ln -sfn ${DIR}/i3status ${HOME}/.config/i3status

echo "Installing foot"
ln -sfn ${DIR}/foot ${HOME}/.config/foot

echo "Installing mako"
ln -sfn ${DIR}/mako ${HOME}/.config/mako

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
ln -sfn ${DIR}/Theme/icon-theme/PixelIcons/ ${HOME}/.icons/CynthPixelIcons
cd ${DIR}

echo "Setting GTK icon theme"
gsettings set org.gnome.desktop.interface icon-theme 'CynthPixelIcons'
gsettings set org.gnome.desktop.interface theme 'Adwaita'

echo "Applying colour scheme: ${THEME_NAME}"
./apply-colour.sh "${THEME_NAME}"

echo "Done :)"
