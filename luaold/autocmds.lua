-- Makefile indentation
vim.api.nvim_create_autocmd( "FileType", {
	pattern = "make",
	callback = function()
		vim.opt_local.expandtab = false
		vim.opt_local.list = true
	end
})

-- Autoformat
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.cs", "*.c", "*.cpp", "*.py" },
  callback = function(ev)
    local buf = ev.buf
    local clients = vim.lsp.get_active_clients({ bufnr = buf })

    for _, client in ipairs(clients) do
      if client.supports_method("textDocument/formatting") then
        vim.lsp.buf.format({ bufnr = buf })
        return
      end
    end
  end,
})

-- Diagnostics window
vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = false,
    float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = false,
})

-- LSP keybindings on attach
--vim.api.nvim_create_autocmd('LspAttach', {
--  callback = function(ev)
--    local opts = { buffer = ev.buf }
--    vim.keymap.set('i', '<C-Space>', '<C-x><C-o>', opts)
--    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
--    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
--    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
--    vim.keymap.set('n', '<Leader>f', function()
--      vim.lsp.buf.format({
--        formatting_options = { tabSize = 4, insertSpaces = true }
--      })
--    end, opts)
--  end,
--})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local bufnr = ev.buf
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    local opts = { buffer = bufnr }

    -- Inlay Hints (only if supported by server + Neovim 0.10+)
    if client and client.server_capabilities.inlayHintProvider then
      vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
    end

    -- Navigation
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    -- Telescope version (optional, better UI):
    -- vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

    -- Actions
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

    -- Hover / Info
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

    -- Formatting
    vim.keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format({ async = false })
    end, opts)

    -- Telescope LSP Pickers
    vim.keymap.set("n", "<leader>ds", "<cmd>Telescope lsp_document_symbols<CR>", opts)
    vim.keymap.set("n", "<leader>ws", "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>", opts)
  end,
})

