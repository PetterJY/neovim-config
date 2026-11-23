-- Loaded when NVIM_AI=1
vim.pack.add({
  {
    src = 'https://github.com/olimorris/codecompanion.nvim',
    version = 'v20.0.1',
  },
})

require("plugins.modules.ai.codecompanion")
