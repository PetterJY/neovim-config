-- Default colorscheme
vim.cmd.colorscheme("retrobox")

require("lspconfig").clangd.setup{
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
    on_attach = function(client, bufnr)
        if client.server_capabilities.semanticTokensProvider then
            client.server_capabilities.semanticTokensProvider = nil
        end
    end,
}

-- Keybinds (Telescope dependent)
vim.keymap.set("n", "<leader>cs", function()
  require("telescope.builtin").colorscheme({
    enable_preview = true,
  })
end, { desc = "Choose Colorscheme" })
