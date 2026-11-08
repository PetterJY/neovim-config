-- Default colorscheme
vim.cmd.colorscheme("retrobox")

-- Keybinds
vim.keymap.set("n", "<leader>cs", function()
  require("telescope.builtin").colorscheme({
    enable_preview = true,
  })
end, { desc = "Choose Colorscheme" })
