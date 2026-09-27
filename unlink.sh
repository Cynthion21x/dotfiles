#!/usr/bin/env bash
#set -euo pipefail

echo "Uninstalling"

unlink_safe() {
    local target="$1"
    if [ -L "$target" ]; then
        rm "$target"
        echo "removed $target"
    elif [ -e "$target" ]; then
        echo "skipping $target (exists but is not a symlink)" >&2
    else
        echo "skipping $target (not present)"
    fi
}

echo "Removing vim config"
unlink_safe "${HOME}/.vim"
unlink_safe "${HOME}/.vimrc"

echo "Removing sway"
unlink_safe "${HOME}/.config/sway"
unlink_safe "${HOME}/Background"

echo "Removing i3status"
unlink_safe "${HOME}/.config/i3status"

echo "Removing foot"
unlink_safe "${HOME}/.config/foot"

echo "Removing ghci conf"
unlink_safe "${HOME}/.ghci"

echo "Removing tmux config"
unlink_safe "${HOME}/.tmux.conf"

echo "Removing gtk"
unlink_safe "${HOME}/.config/gtk-3.0"

echo "Removing icons"
unlink_safe "${HOME}/.icons/PixelIcons"

echo "Done :("
