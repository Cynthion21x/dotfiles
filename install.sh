#!/usr/bin/env bash

#set -euo pipefail

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

ln -sfn ${DIR}/vim/vimrc ${HOME}/.vimrc
ln -sfn ${DIR}/vim/colour ${HOME}/.vim/colors

cd ~/.vim/pack/plugins/start

clone https://github.com/Cynthion21x/VimExplorer.git
clone https://github.com/mg979/vim-visual-multi.git

cd ${DIR}

echo "Installing sway"

mkdir -p ${HOME}/.config/

ln -sfn ${DIR}/sway ${HOME}/.config/sway
ln -sfn ${DIR}/Background ${HOME}/Background

echo "Building screen-freeze"

mkdir -p ./temp/
cd ./temp/

if [ -d ./screen-freeze ]; then
    echo "screen-freeze exists"
    git pull
else
    git clone --recursive https://github.com/Cynthion21x/screen-freeze.git
fi

cd screen-freeze
./build.sh

mkdir -p ${HOME}/bin/

cp ./bin/screen-freeze ${HOME}/bin/screen-freeze

echo "Build complete"

cd ${DIR}

echo "Done :)"
