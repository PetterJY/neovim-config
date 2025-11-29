local lspconfig = require("lspconfig")
lspconfig.clangd.setup({
  cmd = { "clangd" },
  capabilities = {
    offsetEncoding = { "utf-16" },
  },
})
