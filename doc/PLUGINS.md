# Plugins

All plugins are installed with `vim.pack` from the list in
`lua/plugins/init.lua`. Their config lives in `lua/plugins/modules/`.

| Plugin | Purpose | Config |
| --- | --- | --- |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Ready-made language server configs | `lua/lsp/` |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (`main`) | Installs Treesitter parsers for highlighting | `highlighting.lua` |
| [blink.cmp](https://github.com/saghen/blink.cmp) | Autocompletion (LSP, snippets, paths, buffer words) and signature help | `cmp.lua` |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Snippet collection used by blink.cmp | |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder for files, text, commits and more | `navigation/telescope.lua` |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Library Telescope depends on | |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | File tree | `navigation/nvim-tree.lua` |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File icons (needs a Nerd Font) | |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git commands inside Neovim | `tools.lua` |
| [undotree](https://github.com/mbbill/undotree) | Browse the undo history | `tools.lua` |
| [vimwiki](https://github.com/vimwiki/vimwiki) | Personal wiki in `~/vimwiki` (Markdown) | `tools.lua` |
| [kanagawa](https://github.com/rebelot/kanagawa.nvim), [tokyonight](https://github.com/folke/tokyonight.nvim), [catppuccin](https://github.com/catppuccin/nvim), [rose-pine](https://github.com/rose-pine/neovim) | Extra colorschemes (default is the built-in `retrobox`) | `visuals.lua` |
