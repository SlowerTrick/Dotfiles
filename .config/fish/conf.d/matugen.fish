# Functions
function __matugen --on-signal USR1
    commandline -f repaint
    source ~/.config/fzf/matugen-fzf.sh
end
