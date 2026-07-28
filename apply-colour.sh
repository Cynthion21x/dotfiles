#!/usr/bin/env bash

#set -euo pipefail

DIR=$(pwd)
THEME_DIR=${DIR}/Colours

echo "Generating Colours..."

THEME_NAME="$1"
THEME_FILE="$THEME_DIR/$THEME_NAME.sh"
TEMPLATE_DIR=${DIR}/Colours/template

source "$THEME_FILE"

VARLIST='$BG $FG $ACCENT $ACCENT_DARK $ACCENT2 $ACCENT2_DARK $COLOR0 $COLOR1 $COLOR2 $COLOR3 $COLOR4 $COLOR5 $COLOR6 $COLOR7 $COLOR8 $COLOR9 $COLOR10 $COLOR11 $COLOR12 $COLOR13 $COLOR14 $COLOR15'

render() {
    local tmpl="$1" out="$2"
    if [ ! -f "$tmpl" ]; then
        echo "missing template $tmpl, skipping" >&2
        return
    fi
    mkdir -p "$(dirname "$out")"
    envsubst "$VARLIST" < "$tmpl" > "$out"
    echo "wrote $out"
}

render "$TEMPLATE_DIR/sway-colours.tmpl"   "${DIR}/sway/colours"
render "$TEMPLATE_DIR/vim-colour.vim.tmpl" "${DIR}/vim/colors/custom.vim"
render "$TEMPLATE_DIR/foot-theme.ini.tmpl" "${DIR}/foot/foot.ini"

echo "theme '$THEME_NAME' applied."

sway reload

