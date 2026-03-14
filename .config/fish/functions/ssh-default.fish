function ssh-default --wraps='eval (ssh-agent -c); ssh-add ~/.ssh/id_ed25519' --description 'alias ssh-default=eval (ssh-agent -c); ssh-add ~/.ssh/id_ed25519'
    eval (ssh-agent -c); ssh-add ~/.ssh/id_ed25519 $argv
end
