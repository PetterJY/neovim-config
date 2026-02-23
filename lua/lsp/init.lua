require("lsp.clangd")
require("lsp.pylsp")
require("lsp.lua")

-- nvim-lspconfig
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover,
  {
    border = "rounded",
    winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
  }
)
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help,
  {
    border = "rounded",
    winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
  }
)
