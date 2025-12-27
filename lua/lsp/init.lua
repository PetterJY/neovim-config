require("lsp.clangd")
require("lsp.pylsp")

-- nvim-lspconfig
vim.lsp.handlers["textDocument/hover"] =
  vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })

vim.lsp.handlers["textDocument/signatureHelp"] =
  vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

-- Keybinds for diagnostics (LSP dependant)
vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show diagnostic" })
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Diagnostics to loclist" })
