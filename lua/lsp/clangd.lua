vim.lsp.config("clangd", {
  capabilities = {
    offsetEncoding = { "utf-16" },
  },

  on_attach = function(client)
    client.server_capabilities.semanticTokensProvider = nil
  end,
})

vim.lsp.enable("clangd")
