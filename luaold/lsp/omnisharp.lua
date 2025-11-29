local lspconfig = require("lspconfig")
lspconfig.omnisharp.setup({
  cmd = { "omnisharp", "--languageserver" },
  filetypes = { "cs" },
  enable_editorconfig_support = true,
  enable_ms_build_load_projects_on_demand = true,
  organize_imports_on_format = true,
  enable_import_completion = true,
})
