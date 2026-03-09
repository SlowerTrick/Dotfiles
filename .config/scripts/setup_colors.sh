#!/bin/bash

WALLPAPER_JSON="$HOME/.cache/noctalia/wallpapers.json"
CURRENT_WALL="$HOME/.cache/current_wallpaper"

sleep 0.5

[[ -f "$WALLPAPER_JSON" ]] || exit 1

# Get actual wallpaper
WALL=$(jq -r '.wallpapers["0"]' "$WALLPAPER_JSON")

# Caching
if [ -f "$WALL" ]; then
    ln -sf "$WALL" "$CURRENT_WALL"
fi

# Generate color scheme
matugen image "$CURRENT_WALL" -t scheme-tonal-spot # --show-colors
for pid in $(pgrep cava); do
    if pstree -s "$pid" | grep -q "kitty"; then
        kill -SIGUSR1 "$pid"
    fi
done
