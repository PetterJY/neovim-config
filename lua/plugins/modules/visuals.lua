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

  -- Main text
  set(0, "CmpItemAbbr", { link = "Pmenu" })
  set(0, "CmpItemMenu", { link = "Pmenu" })
  set(0, "CmpItemKind", { link = "Pmenu" })

  -- Matched text
  set(0, "CmpItemAbbrMatch", { link = "PmenuSel" })
  set(0, "CmpItemAbbrMatchFuzzy", { link = "PmenuSel" })

  -- Optional: remove kind coloring completely
  for _, group in ipairs({
    "CmpItemKindFunction",
    "CmpItemKindMethod",
    "CmpItemKindVariable",
    "CmpItemKindKeyword",
    "CmpItemKindField",
    "CmpItemKindProperty",
  }) do
    set(0, group, { link = "Pmenu" })
  end
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
