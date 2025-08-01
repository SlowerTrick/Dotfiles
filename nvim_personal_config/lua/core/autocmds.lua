-- Autosave
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = { "*" },
  command = "silent! wall",
  nested = true,
})

-- Remove "~" chars from empty lines 
vim.opt.fillchars:append({ eob = " " })
