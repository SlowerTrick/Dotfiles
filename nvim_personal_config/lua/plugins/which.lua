return {
  -- Hints keybinds
  'folke/which-key.nvim',
  opts = {
    preset = "helix",
    spec = {
      { "<leader>D", group = "LSP" },
      { "<leader>e", group = "Neotree" },
      { "<leader>h", group = "Windows" },
      { "<leader>q", group = "Diagnostics" },
      { "<leader>s", group = "Telescope" },
      { "<leader>/", group = "Search inside buffer" },
      { "<leader> ", group = "Search existing buffers" },
      { "<leader>b", group = "Theme" },
    }
  },
}
