return {
    "folke/which-key.nvim",
    opts = {
        spec = {
            sort = {"case"},
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
            {
                "<leader>y",
                desc = "Yazi",
                icon = "󰇥",
            },
            {
                "<leader>cy",
                desc = "Yazi (cwd)",
                icon = "󰇥",
            },
            {
                "<leader>K",
                hidden = true,
            },
            {
                "<leader>cD",
                ":cd %:p:h<CR>:pwd<CR>",
                desc = "Change (CWD) to the current file",
                icon = "",
            },
        },
    },
}
