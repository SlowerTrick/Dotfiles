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

# Aliases
alias grep "grep --color=auto"
alias ls "eza --icons --group-directories-first"

alias neofetch "clear && fastfetch -c ~/.config/fastfetch/config_arch.jsonc"
alias pokemon "pokemon-colorscripts -r --no-title"

alias ssh-default "eval (ssh-agent -c); ssh-add ~/.ssh/id_ed25519"
alias ssh-ufes "eval (ssh-agent -c); ssh-add ~/.ssh/id_ed25519_ufes"

alias lockscreen "sddm-greeter-qt6 --test-mode --theme /usr/share/sddm/themes/sddm-astronaut-theme/"

alias config-hyprland "nvim ~/.config/hypr/components/"

# Variables and Defines
set -gx QT_QPA_PLATFORMTHEME kde
set -gx XDG_MENU_PREFIX arch-

# Functions
function __matugen_repaint --on-signal USR1
    commandline -f repaint
end
