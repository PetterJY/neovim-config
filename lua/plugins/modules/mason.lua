require("mason").setup() 

require("mason-lspconfig").setup({
  ensure_installed = { "clangd", "lua_ls", "pylsp", "ruff" },
  automatic_enable = false, 
})
