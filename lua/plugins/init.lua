local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({"git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Tools
    {
        "mbbill/undotree",
        config = function() require("plugins.modules.tools").undotree() end,
    },

    {
        "vimwiki/vimwiki",
        config = function() require("plugins.modules.tools").vimwiki() end,
    },

    {
        "mg979/vim-visual-multi",
        branch = "master",
        config = function() require("plugins.modules.tools").visualmulti() end,
    },

    {
        "mfussenegger/nvim-dap",
        dependencies = { "nvim-neotest/nvim-nio" },
        config = function() require("plugins.modules.tools").dap() end,
    },

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("plugins.modules.highlighting")
        end,
    },

    -- Telescope
    { "nvim-telescope/telescope.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function() require("plugins.modules.navigation.telescope") end, },
    
    -- Nvim-Tree
    { "nvim-tree/nvim-tree.lua",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function() require("plugins.modules.navigation.nvim-tree") end, },
    
    -- Autocomplete (CMP)
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
            {
                "L3MON4D3/LuaSnip",
                version = "v2.4.1",
                build = "make install_jsregexp",
            },
        },
        config = function()
            require("plugins.modules.cmp")
        end,
    },

    -- LSP
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lsp")
        end,
    },
    "ray-x/lsp_signature.nvim", 

    -- Colorschemes
    "folke/tokyonight.nvim",
    "rebelot/kanagawa.nvim",
    { "catppuccin/nvim", name = "catppuccin" },
    { "rose-pine/neovim", name = "rose-pine" },
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        lazy = false,
        config = function()
            require("plugins.modules.visuals")
        end,
    },

})
