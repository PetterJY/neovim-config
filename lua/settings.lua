vim.opt.updatetime = 50

-- Leader key
vim.g.mapleader = " "

-- History
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"

-- Buffer/Splits
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.relativenumber = true

-- Indenting
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.breakindent = true
vim.opt.breakindentopt = { "shift:2" }

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
