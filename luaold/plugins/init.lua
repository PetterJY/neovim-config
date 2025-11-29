local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({"git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- I don't fucking know
    "mbbill/undotree",
    "vimwiki/vimwiki",

    -- Telescope
    { "nvim-telescope/telescope.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function() require("plugins.telescope") end },

    -- Autocomplete
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp",

    -- Multi-Cursor
    { "mg979/vim-visual-multi", branch = "master" },

    -- LSP
    {
      "neovim/nvim-lspconfig",
      config = function()
        require("plugins.lsp")
      end,
    },
    "ray-x/lsp_signature.nvim",

    -- File-Explorer
    { "nvim-tree/nvim-tree.lua",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function() require("plugins.nvim-tree") end },

    -- Debug Adapter Integration
    { "mfussenegger/nvim-dap",
      dependencies = { "nvim-neotest/nvim-nio" } },

      -- Colorschemes
    { "folke/tokyonight.nvim" },
    { "rebelot/kanagawa.nvim" },
    { "catppuccin/nvim", name = "catppuccin" },
    { "rose-pine/neovim", name = "rose-pine" },

    -- Default theme loader
    {
      "folke/tokyonight.nvim",
      priority = 1000,
      lazy = false,
    },
})
