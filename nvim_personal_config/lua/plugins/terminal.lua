return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        opts = {
            size = 20,
            open_mapping = [[<c-t>]], -- Tecla para abrir o terminal
            direction = "float",      -- Tipo de terminal: "horizontal", "vertical", "tab", ou "float"
            float_opts = {
                border = "curved",      -- Pode ser "single", "double", "shadow", "curved"
                winblend = 0,
                highlights = {
                    border = "Normal",
                    background = "Normal",
                }
            }
        }
    }
}
