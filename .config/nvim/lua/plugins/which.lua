return {
    "folke/which-key.nvim",
    opts = {
        spec = {
            {
                "<leader><space>",
                function()
                    require("snacks").picker.files({
                        cwd = vim.fn.getcwd(),
                    })
                end,
                desc = "Find Files (cwd)",
            },
            {
                "<leader>E",
                function()
                    require("snacks").explorer()
                end,
                desc = "Explorer Snacks (root dir)",
            },
            {
                "<leader>e",
                function()
                    require("snacks").explorer({
                        cwd = vim.fn.getcwd(),
                    })
                end,
                desc = "Explorer Snacks (cwd)",
            },
        },
    },
}
