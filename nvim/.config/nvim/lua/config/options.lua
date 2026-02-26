-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable diagnostic
-- vim.diagnostic.enable(false)

-- Disable animations
-- vim.g.snacks_animate = false

-- Must need
vim.wo.number = true -- Make line numbers visible
vim.o.relativenumber = true -- Relative line numbers
vim.o.clipboard = "unnamedplus" -- Sync clipboard between OS and Nvim
vim.o.mouse = "a" -- Enable mouse mode
vim.o.autoindent = true -- Setup identation for next line
vim.o.ignorecase = true -- Case-insensitive searching UNLESS \C or capital in search
vim.o.smartcase = true -- Smart case (default: false)
vim.o.shiftwidth = 4 -- The number of spaces inserted for each indentation
vim.o.tabstop = 4 -- Insert 4 spaces for a tab
vim.o.softtabstop = 4 -- Number of spaces that a tab counts for while performing editing operations
vim.o.expandtab = true -- Convert tabs to spaces

-- ETC
vim.o.swapfile = false -- Creates a swapfile (default: true)
vim.o.smartindent = true -- Make indenting smarter again (default: false)
vim.o.showtabline = 2 -- Always show tabs (default: 1)
vim.o.backup = false -- Creates a backup file (default: false)
vim.o.undofile = true -- Save undo history (default: false)
