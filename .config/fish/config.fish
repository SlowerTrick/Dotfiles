# Initilal Setup
if status is-interactive
    set fish_greeting
    starship init fish | source
    fzf --fish | source
    source ~/.config/fzf/matugen-fzf.sh
    zoxide init fish | source
end

# Vscode and neovim pokemon-colorscripts block
if not set -q VSCODE_IPC_HOOK; and test "$TERM_PROGRAM" != "vscode"; and not set -q NVIM
    ~/.config/fastfetch/fastfetch_pokemon.sh
end
