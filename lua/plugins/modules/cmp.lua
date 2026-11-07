-- Autocompletion 
require("blink.cmp").setup({
  keymap = {
    preset = "none",
    ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
    ["<CR>"] = { "accept", "fallback" },
    ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
    ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
    ["<C-n>"] = { "select_next", "fallback" },
    ["<C-p>"] = { "select_prev", "fallback" },
    ["<C-e>"] = { "hide", "fallback" },
  },

  completion = {
    menu = {
      border = "rounded",
      max_height = 10,
      draw = {
        components = {
          label = { width = { max = 20 } }, -- truncate long names
        },
      },
    },
    documentation = {
      auto_show = true,
      window = { border = "rounded" },
    },
  },

  -- Function signature while typing arguments
  signature = {
    enabled = true,
    window = { border = "rounded" },
  },

  sources = {
    default = { "lsp", "snippets", "path", "buffer" },
  },
})

-- Match the menu colors to the colorscheme's floating windows
local function link_to_theme()
  local set = vim.api.nvim_set_hl
  set(0, "BlinkCmpMenu", { link = "NormalFloat" })
  set(0, "BlinkCmpMenuBorder", { link = "FloatBorder" })
  set(0, "BlinkCmpMenuSelection", { link = "Visual" })
  set(0, "BlinkCmpLabelMatch", { link = "Search" })
  set(0, "BlinkCmpDoc", { link = "NormalFloat" })
  set(0, "BlinkCmpDocBorder", { link = "FloatBorder" })
  set(0, "BlinkCmpSignatureHelp", { link = "NormalFloat" })
  set(0, "BlinkCmpSignatureHelpBorder", { link = "FloatBorder" })
end

link_to_theme()
vim.api.nvim_create_autocmd("ColorScheme", { callback = link_to_theme })
