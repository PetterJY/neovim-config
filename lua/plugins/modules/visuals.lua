-- Default colorscheme
vim.cmd.colorscheme("retrobox")

require("lspconfig").clangd.setup {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
  on_attach = function(client, bufnr)
    if client.server_capabilities.semanticTokensProvider then
      client.server_capabilities.semanticTokensProvider = nil
    end
  end,
}

local function link_cmp_to_theme()
  local set = vim.api.nvim_set_hl

  -- Window/background (match floating windows from theme)
  set(0, "CmpPmenu", { link = "NormalFloat" })
  set(0, "CmpBorder", { link = "FloatBorder" })
  set(0, "CmpPmenuSel", { link = "Visual" })

  -- Text inside the menu
  set(0, "CmpItemAbbr", { link = "NormalFloat" })
  set(0, "CmpItemMenu", { link = "Comment" }) -- right-side source text
  set(0, "CmpItemKind", { link = "Special" }) -- kind icon/text

  -- Matched characters in the abbr
  set(0, "CmpItemAbbrMatch", { link = "Search" })
  set(0, "CmpItemAbbrMatchFuzzy", { link = "Search" })
end

-- Apply now
link_cmp_to_theme()

-- Reapply whenever colorscheme changes
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = link_cmp_to_theme,
})

-- Keybinds (Telescope dependent)
vim.keymap.set("n", "<leader>cs", function()
  require("telescope.builtin").colorscheme({
    enable_preview = true,
  })
end, { desc = "Choose Colorscheme" })
