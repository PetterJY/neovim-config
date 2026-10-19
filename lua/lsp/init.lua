require("lsp.clangd")
require("lsp.pylsp")
require("lsp.lua")

-- Hover
vim.keymap.set("n", "K", function()
  vim.lsp.buf.hover({
    border = "rounded",
    winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
  })
end, { desc = "LSP Hover" })

-- Signature help
vim.keymap.set("n", "<C-k>", function()
  vim.lsp.buf.signature_help({
    border = "rounded",
    winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
  })
end, { desc = "LSP Signature Help" })
