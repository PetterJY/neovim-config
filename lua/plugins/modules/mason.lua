require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "clangd", "lua_ls", "pylsp", "ruff", "systemd_lsp" },
  automatic_enable = false,
})
