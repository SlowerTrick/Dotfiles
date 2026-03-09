#!/usr/bin/env bash

DIR="$HOME/.cache/noctalia"
FILE="wallpapers.json"

inotifywait -m -e create -e moved_to "$DIR" --format '%f' |
while read changed; do
    if [[ "$changed" == "$FILE" ]]; then
        ~/.config/scripts/setup_colors.sh
    fi
done
