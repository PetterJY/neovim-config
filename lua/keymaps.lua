-- Insert-mode escape
vim.keymap.set('i', 'jj', '<esc>')

-- Sane clipboard/register interplay
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Centered Movement
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- half page
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "j", "gjzz")        -- line
vim.keymap.set("n", "k", "gkzz")
vim.keymap.set("n", "n", "nzzzv")       -- search result
vim.keymap.set("n", "N", "Nzzzv")

-- Move selection (up/down)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Tabs
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "<leader>to", ":tabonly<CR>", { desc = "Close other tabs" })
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<leader>th", ":tabprevious<CR>", { desc = "Previous tab" })

for i = 1, 9 do
  vim.keymap.set("n", "<leader>t" .. i, function()
    vim.cmd(i .. "tabnext")
  end, { desc = "Go to tab " .. i })
end

-- Splits
vim.keymap.set("n", "<C-w>n", "<C-w>s", { desc = "Horizontal split" })
vim.keymap.set("n", "<C-w>e", "<C-w>n", { desc = "Open new split in empty buffer" })

-- Center view after selection
vim.keymap.set('v', '<esc>', '<esc>zz')

-- Toggle linewrapping
vim.keymap.set("n", "<leader>lw", ":set wrap<CR>")
vim.keymap.set("n", "<leader>le", ":set nowrap<CR>")

-- tmux-sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
