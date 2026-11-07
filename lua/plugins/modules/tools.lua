local M = {}

function M.undotree()
  vim.cmd.packadd("nvim.undotree")
  vim.keymap.set("n", "<leader>u", "<cmd>Undotree<CR>", { desc = "Toggle undo tree" })
end

function M.vimwiki()
  vim.g.vimwiki_list = {
    { path = "~/vimwiki", syntax = "markdown", ext = ".md" },
  }
end

function M.fugitive()
  vim.keymap.set("n", "<leader>gs", ":G<CR>")
  vim.keymap.set("n", "<leader>gb", ":G blame<CR>")
end

return M
