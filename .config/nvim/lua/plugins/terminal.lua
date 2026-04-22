return {
    "akinsho/toggleterm.nvim",
    opts = {
        open_mapping = [[<c-t>]],
        direction = "float",
        shell = "fish",

        --color settings
        shade_terminals = false,
        highlights = {
            NormalFloat = {
                link = "NormalFloat",
            },
            FloatBorder = {
                link = "FloatBorder",
            },
        },
        float_opts = {
            border = "curved",
        },
    },
    version = "*",
}
