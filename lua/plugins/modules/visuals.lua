-- Default colorscheme
vim.cmd.colorscheme("retrobox")

-- Keybinds (Telescope dependent)
vim.keymap.set("n", "<leader>cs", function()
  require("telescope.builtin").colorscheme({
    enable_preview = true,
  })
end, { desc = "Choose Colorscheme" })
