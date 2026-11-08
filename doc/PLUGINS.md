# Plugins

All plugins are installed with `vim.pack` from the list in
`lua/plugins/init.lua`. Their config lives in `lua/plugins/modules/`.

| Plugin | Purpose | Config |
| --- | --- | --- |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Ready-made language server configs | `lua/lsp/` |
| [mason.nvim](https://github.com/mason-org/mason.nvim) | Installs language servers | `mason.lua` |
| [mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) | Tells Mason which servers to install | `mason.lua` |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (`main`) | Installs Treesitter parsers for highlighting | `highlighting.lua` |
| [blink.cmp](https://github.com/saghen/blink.cmp) | Autocompletion (LSP, snippets, paths, buffer words) and signature help | `cmp.lua` |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Snippet collection used by blink.cmp | |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder for files, text, commits and more | `navigation/telescope.lua` |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Library Telescope depends on | |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | File tree | `navigation/nvim-tree.lua` |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File icons (needs a Nerd Font) | |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git commands inside Neovim | `tools.lua` |
| [vimwiki](https://github.com/vimwiki/vimwiki) | Personal wiki in `~/vimwiki` (Markdown) | `tools.lua` |
| [codecompanion.nvim](https://github.com/olimorris/codecompanion.nvim) (`v20.0.1`) | AI chat, inline edits, Claude Code CLI and review of AI changes, all using Claude Code | `ai/codecompanion.lua` |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) (`v8.14.0`) | Renders Markdown in the buffer, used for Markdown files, the AI chat and vimwiki | `markdown.lua` |
| [kanagawa](https://github.com/rebelot/kanagawa.nvim), [tokyonight](https://github.com/folke/tokyonight.nvim), [catppuccin](https://github.com/catppuccin/nvim), [rose-pine](https://github.com/rose-pine/neovim) | Extra colorschemes (default is the built-in `retrobox`) | `visuals.lua` |
