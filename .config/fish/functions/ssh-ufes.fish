function ssh-ufes --wraps='eval (ssh-agent -c); ssh-add ~/.ssh/id_ed25519_ufes' --description 'alias ssh-ufes=eval (ssh-agent -c); ssh-add ~/.ssh/id_ed25519_ufes'
    eval (ssh-agent -c); ssh-add ~/.ssh/id_ed25519_ufes $argv
end
