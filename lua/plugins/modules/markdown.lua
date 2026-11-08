require("render-markdown").setup({
  file_types = { "markdown", "codecompanion", "vimwiki" },
})
vim.treesitter.language.register("markdown", "vimwiki")
