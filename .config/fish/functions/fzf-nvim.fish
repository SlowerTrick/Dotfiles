function fzf-nvim --wraps="nvim (fzf --preview='bat --color=always {}')" --description "alias fzf-nvim=nvim (fzf --preview='bat --color=always {}')"
    nvim (fzf --preview='bat --color=always --style=numbers {}') $argv
end
