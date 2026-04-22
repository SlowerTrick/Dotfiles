local M = {}

local theme_map = {
    blue = "tokyonight",
    purple = "catppuccin-mocha",
    green = "rose-pine",
    red = "rose-pine-moon",
    yellow = "gruvbox",
    cat = "catppuccin-mocha",
}
local wallpaper_file = vim.fn.expand("~/.cache/wallpaper_path")
local last_theme

local function get_wallpaper_name()
    local f = io.open(wallpaper_file, "r")
    if not f then return end
    local path = f:read("*l")
    f:close()
    return path and path:match("([^/]+)$")
end

local function extract_color(name)
    return name and name:match("^(%a+)")
end

function M.apply()
    local name = get_wallpaper_name()
    if not name then return end

    local color = extract_color(name)
    local theme = theme_map[color] or "tokyonight"

    if theme == last_theme then return end
    last_theme = theme

    vim.schedule(function()
        vim.cmd.colorscheme(theme)
    end)
end

function M.watch()
    local signal = vim.loop.new_signal()
    -- Captura o sinal SIGUSR1
    vim.loop.signal_start(signal, "sigusr1", function()
        M.apply()
    end)
end

function M.setup()
    M.apply()
    M.watch()
end

return M
