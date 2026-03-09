return {
    {
        "folke/tokyonight.nvim",
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
    },

    {
        "samharju/synthweave.nvim",
        lazy = false,
    },

    { "rebelot/kanagawa.nvim" },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            term_colors = true,
            transparent_background = true,
            dim_inactive = {
                enabled = false, -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.15, -- percentage of the shade to apply to the inactive window
            },
            integrations = {
                cmp = true,
                gitsigns = true,
                treesitter = true,
                harpoon = true,
                telescope = true,
                mason = true,
                noice = true,
                notify = true,
                which_key = true,
                fidget = true,
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                    },
                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        warnings = { "underline" },
                        information = { "underline" },
                    },
                    inlay_hints = {
                        background = true,
                    },
                },
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
            },
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)
            vim.cmd.colorscheme("catppuccin-mocha")
        end,
    },
    {
        "RRethy/base16-nvim",
        lazy = true,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = function()
                local palette = require("config.matugen").colors
                require("base16-colorscheme").setup(palette)
                require("config.transparent").apply()
            end,
        },
    }
    --{
    --    "LazyVim/LazyVim",
    --    opts = {
    --        -- colorscheme = function() end, -- Disable LazyVim's colorscheme
    --        colorscheme = "tokyonight",
    --    },
    --}
}
