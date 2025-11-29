require("telescope").setup({
    defaults = {
        file_ignore_patterns = { "%.meta$" }
    }
})

-- Keybinds
local map = vim.keymap.set
map("n", "<leader>pf", ":Telescope git_files<CR>")
map("n", "<leader>ps", ":Telescope live_grep<CR>")
map("n", "<leader>pb", ":Telescope current_buffer_fuzzy_find<CR>")
map("n", "<leader>pg", ":Telescope git_bcommits<CR>")
map("n", "<leader>pF", ":Telescope find_files<CR>")
