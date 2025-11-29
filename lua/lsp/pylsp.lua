local lspconfig = require("lspconfig")
lspconfig.pylsp.setup({
  cmd = { "pylsp" },
  filetypes = { "python" },
})
