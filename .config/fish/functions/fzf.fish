function fzf --description "alias fzf=fzf --preview 'bat --color=always --style=numbers {}'"
    command fzf --preview 'bat --color=always --style=numbers {}' $argv
end
