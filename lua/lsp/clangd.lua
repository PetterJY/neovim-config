vim.lsp.config("clangd", {
  cmd = { "clangd" },
  capabilities = {
    offsetEncoding = { "utf-16" },
  },
})
vim.lsp.enable("clangd")
