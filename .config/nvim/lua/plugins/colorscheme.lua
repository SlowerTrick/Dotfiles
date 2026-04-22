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
        "catppuccin/nvim",
        opts = {
            name = "catppuccin",
            flavour = "auto",
            priority = 1000,
            transparent_background = true,
            float = {
                transparent = true,
            },
        }
    },

    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        opts = {
            transparent_mode = true,
        }
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        variant = "auto",
        opts = {
            styles = {
                transparency = true,
            },
        },
    },

    {
        "LazyVim/LazyVim",

        opts = {
            colorscheme = "tokyonight",
        },
        -- init = function()
        --     require("config.theme").setup()
        -- end,
    },
}
