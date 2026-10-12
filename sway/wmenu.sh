#!/bin/sh
exec wmenu-run -i \
  -f 'Fira Code 16' \
  -N '#1a1b26' -n '#ffffff' \
  -M '#1a1b26' -m '#e0af68' \
  -S '#bb9af7' -s '#ffffff' \
  -b \
  "$@"
