#!/bin/bash

#CURRENT_WALL="$HOME/.cache/current_wallpaper"
CURRENT_WALL="$1"

#[[ -f "$WALLPAPER_JSON" ]] || exit 1

# Get actual wallpaper
#WALL=$(jq -r '.wallpapers["0"]' "$WALLPAPER_JSON")
#EXT="${WALL##*.}"
#CURRENT_WALL="${CURRENT_WALL}.${EXT}"

# Caching
#if [ -f "$WALL" ]; then
#    ln -sf "$WALL" "$CURRENT_WALL"
#fi

# Generate color scheme
matugen image "$CURRENT_WALL" -t scheme-tonal-spot --source-color-index 0 -q

# Cava
#for pid in $(pgrep cava); do
#    if pstree -s "$pid" | grep -q "kitty"; then
#        kill -SIGUSR1 "$pid"
#    fi
#done
