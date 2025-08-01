vim.keymap.set('n', '<leader>bs', ':Telescope colorscheme<CR>', { noremap = true, silent = true }) -- change colorscheme

return {
    {
        "samharju/synthweave.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- Change between transparent or not
            local bg_transparent = false

            local function toggle_transparency()
                bg_transparent = not bg_transparent
                if bg_transparent then
                    vim.cmd.colorscheme("synthweave-transparent")
                else
                    vim.cmd.colorscheme("synthweave")
                end
            end

            -- Map <leader>bg to set transparency
            vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true, desc = "Toggle background transparency" })

            -- Apply theme
            vim.cmd.colorscheme("synthweave")
        end
    },
    {"rebelot/kanagawa.nvim"},
    { "catppuccin/nvim", name = "catppuccin" },
}
