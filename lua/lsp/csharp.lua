-- C# via roslyn.nvim.
-- The plugin enables the roslyn server itself, so no vim.lsp.enable() here.
-- The server is the `roslyn-language-server` dotnet global tool
require("roslyn").setup({})
