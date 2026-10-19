local ok, configs = pcall(require, 'nvim-treesitter.configs')
if not ok then
  return
end

-- Treesitter
require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = {
    "bash", "c", "cpp", "h", "hpp", "lua", "python",
    "vim", "vimdoc", "query",
    "markdown", "markdown_inline", "html"
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
