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

echo "Installing vim"

# vim config
mkdir -p $HOME/.vim/pack/plugins/start
#mkdir -p $HOME/.vim/colors

ln -sfn ${DIR}/vim/vimrc ${HOME}/.vimrc
ln -sfn ${DIR}/vim/colour ${HOME}/.vim/colors

cd ~/.vim/pack/plugins/start

clone https://github.com/Cynthion21x/VimExplorer.git
clone https://github.com/mg979/vim-visual-multi.git
clone https://github.com/kien/rainbow_parentheses.vim.git
clone https://github.com/vim-polyglot/vim-polyglot.git

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

cd ${DIR}

echo "Done :)"
