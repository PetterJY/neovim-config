-- Nvim-Tree
require("nvim-tree").setup({
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = false,
    },
    actions = {
        open_file = {
            quit_on_open = true,
            resize_window = false,
            window_picker = { enable = false },
        },
    },
    filters = {
        custom = { "\\.meta$" },
    },
})

-- Keybinds 
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>r", ":NvimTreeRefresh<CR>", { noremap = true, silent = true })
