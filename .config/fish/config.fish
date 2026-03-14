# Initilal Setup
if status is-interactive
    set fish_greeting
    starship init fish | source
    fzf --fish | source
end

# Vscode and neovim pokemon-colorscripts block
if not set -q VSCODE_IPC_HOOK; and test "$TERM_PROGRAM" != "vscode"; and not set -q NVIM
    clear
    ~/.config/fastfetch/fastfetch_pokemon.sh
end

# Functions
function __matugen_repaint --on-signal USR1
    commandline -f repaint
end

zoxide init fish | source
