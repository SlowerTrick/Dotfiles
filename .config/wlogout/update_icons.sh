##!/usr/bin/env bash

COLORS_FILE="$HOME/.config/wlogout/colors.css"
ICONS_DIR="$HOME/.config/wlogout/icons"

COLOR=$(grep '@define-color primary ' "$COLORS_FILE" | awk '{print $3}' | tr -d ';')

if [ -z "$COLOR" ]; then
    echo "Erro: Não foi possível encontrar a cor 'primary' em $COLORS_FILE"
    exit 1
fi

for file in "$ICONS_DIR"/*.svg; do
    [ -e "$file" ] || continue

    sed -i 's/<svg[^>]*>/&/' "$file"
    sed -i 's/\(<svg[^>]*\) fill="[^"]*"/\1/' "$file"
    sed -i "s/<svg/<svg fill=\"$COLOR\"/" "$file"
done

echo "Sucesso: Ícones atualizados para $COLOR"
