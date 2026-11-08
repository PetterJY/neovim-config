-- Treesitter
local parsers = {
  "bash", "c", "cpp", "lua", "python",
  "vim", "vimdoc", "query", "yaml",
  "markdown", "markdown_inline", "html",
}

-- Check if the parsers are installed. If not download them.
if vim.fn.executable("tree-sitter") == 1 then
  require("nvim-treesitter").install(parsers)
end

-- Start highlighting if the parser is installed for the filetype.
vim.api.nvim_create_autocmd("FileType", {
  callback = function(ev)
    local lang = vim.treesitter.language.get_lang(ev.match)
    if lang and vim.treesitter.language.add(lang) then
      pcall(vim.treesitter.start, ev.buf, lang)
    end
  end,
})
