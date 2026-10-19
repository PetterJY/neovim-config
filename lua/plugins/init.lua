vim.pack.add({
  -- Undotree
  'https://github.com/mbbill/undotree',

  -- Vimwiki
  'https://github.com/vimwiki/vimwiki',

  -- Fugitive
  'https://github.com/tpope/vim-fugitive',

  -- Treesitter
  {
    src = 'https://github.com/nvim-treesitter/nvim-treesitter',
    version = 'master',
    -- vim.cmd('TSUpdate')
  },

  -- Telescope
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/nvim-lua/plenary.nvim',

  -- Nvim-tree
  'https://github.com/nvim-tree/nvim-tree.lua',
  'https://github.com/nvim-tree/nvim-web-devicons',

  -- Autocomplete (CMP)
  'https://github.com/hrsh7th/nvim-cmp',
  'https://github.com/hrsh7th/cmp-buffer',
  'https://github.com/hrsh7th/cmp-nvim-lsp',
  'https://github.com/hrsh7th/cmp-path',
  'https://github.com/saadparwaiz1/cmp_luasnip',
  {
    src = 'https://github.com/L3MON4D3/LuaSnip',
    version = 'v2.4.1',
    build = 'make install_jsregexp',
  },

  -- LSP
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/ray-x/lsp_signature.nvim',

  -- Colorschemes
  'https://github.com/rebelot/kanagawa.nvim',
  'https://github.com/folke/tokyonight.nvim',

  {
    src = 'https://github.com/catppuccin/nvim',
    name = 'catppuccin'
  },

  {
    src = 'https://github.com/rose-pine/neovim',
    name = 'rose-pine'
  },
})

-- Tools
require('plugins.modules.tools').undotree()
require('plugins.modules.tools').vimwiki()
require('plugins.modules.tools').fugitive()

-- Treesitter
require('plugins.modules.highlighting')

-- Telescope
require('plugins.modules.navigation.telescope')

-- Nvim-tree
require('plugins.modules.navigation.nvim-tree')

-- Autocomplete (CMP)
require('plugins.modules.cmp')
