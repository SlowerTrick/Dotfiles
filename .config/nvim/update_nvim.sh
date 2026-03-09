#!/usr/bin/env bash

for sock in /run/user/$UID/nvim.*; do
    if [ -S "$sock" ]; then
        nvim --server "$sock" --remote-send "<Esc>:ReloadMatugen<CR>"
    fi
done
