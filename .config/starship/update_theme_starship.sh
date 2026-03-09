#!/bin/bash

CONFIG_FILE="$HOME/.config/starship.toml"
COLORS_FILE="$HOME/.config/starship/colors.toml"

get_color() {
    grep "$1 =" "$COLORS_FILE" | sed -E "s/.*= '(.*)'/\1/"
}

# Extração das novas cores
C1=$(get_color "color1")
C2=$(get_color "color2")
C3=$(get_color "color3")
C4=$(get_color "color4")
C5=$(get_color "color5")
C6=$(get_color "color6")
C7=$(get_color "color7")
C8=$(get_color "color8")
C9=$(get_color "color9")

sed -i -e "s/arrow = \".*\"/arrow = \"$C1\"/" \
       -e "s/os = \".*\"/os = \"$C1\"/" \
       -e "s/os_admin = \".*\"/os_admin = \"$C2\"/" \
       -e "s/text_color = \".*\"/text_color = \"$C6\"/" \
       -e "s/directory = \".*\"/directory = \"$C2\"/" \
       -e "s/text_light = \".*\"/text_light = \"$C1\"/" \
       -e "s/time = \".*\"/time = \"$C9\"/" \
       -e "s/duration = \".*\"/duration = \"$C4\"/" "$CONFIG_FILE"
