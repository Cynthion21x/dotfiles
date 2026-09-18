#!/bin/sh

pid=$(swaymsg -t get_tree | jq -r '
    recurse(.nodes[]?, .floating_nodes[]?)
    | select(.focused == true)
    | .pid
' | head -n1)

if [[ -n "$pid" && "$pid" != "null" ]]; then
    cwd=$(readlink -f "/proc/$pid/cwd" 2>/dev/null)
fi

if [[ -d "$cwd" ]]; then
    exec footclient --working-directory="$cwd"
else
    exec footclient
fi
