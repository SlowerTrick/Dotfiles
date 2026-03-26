function config-hyprland --wraps='nvim ~/.config/hypr/components/' --description 'alias config-hyprland=nvim ~/.config/hypr/components/'
    z ~/.config/hypr/components/
    nvim . $argv
end
