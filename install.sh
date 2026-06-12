#!/usr/bin/env bash

set -euo pipefail

clone() {

    local repo="$1"

    local name="${repo##*/}"
    name="${name%.git}"

    if [ -d "$(pwd)/${name}" ]; then
        echo "$name already exists"
        cd ./${name}
        git pull
        cd ..
    else
        git clone "$repo"
    fi
}

DIR=$(pwd)

echo "Installing"

git config --global user.name "cynthion"
git config --global user.email "cynth@cynthion21x.co.uk"

echo "Installing vim"

# vim config
mkdir -p $HOME/.vim/pack/plugins/start
#mkdir -p $HOME/.vim/colors

ln -sf ${DIR}/vim/vimrc ${HOME}/.vimrc
ln -sf ${DIR}/vim/colour ${HOME}/.vim/colors

cd ~/.vim/pack/plugins/start

clone https://github.com/Cynthion21x/VimExplorer.git
clone https://github.com/mg979/vim-visual-multi.git

cd ${DIR}

echo "Done :)"
