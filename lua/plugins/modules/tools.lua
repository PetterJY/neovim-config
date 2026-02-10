local M = {}

function M.undotree()
    -- Example keymap
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle Undotree" })
    vim.g.undotree_DiffCommand = "diff"
end

function M.vimwiki()
    -- Optional settings
    vim.g.vimwiki_list = {
        { path = "~/vimwiki", syntax = "markdown", ext = ".md" },
    }
end

function M.visualmulti()
-- visual-multi needs no config normally
end

function M.dap()
-- minimal DAP setup
local dap = require("dap")
-- You can add adapter config here later
end

function M.fugitive()
    vim.keymap.set("n", "<leader>gs", ":G<CR>")
    vim.keymap.set("n", "<leader>gb", ":G blame<CR>")
end

function M.leetcode()
    return {
        arg = "leetcode.nvim",
        lang = "cpp",
        storage = {
            home = vim.fn.stdpath("data") .. "/leetcode",
            cache = vim.fn.stdpath("cache") .. "/leetcode",
        },
        plugins = {
        non_standalone = true,
        },
        logging = true,
        injector = { 
            ["python3"] = {
                imports = function(default_imports)
                    vim.list_extend(default_imports, { "from .leetcode import *" })
                    return default_imports
                end,
                after = { "def test():", "    print('test')" },
            },
            ["cpp"] = {
                imports = function()
                    -- return a different list to omit default imports
                    return { "#include <bits/stdc++.h>", "using namespace std;" }
                end,
                after = "int main() {}",
            },
        },
        picker = {
            provider = telescope
        },

        -- If I want something else than the default
        -- theme = { ["alt"] = { bg = "#FFFFFF", }, ["normal"] = { fg = "#EA4AAA", }, },
        keys = {
            toggle = { "q" }, ---@type string|string[]
            confirm = { "<CR>" }, ---@type string|string[]

            reset_testcases = "r", ---@type string
            use_testcase = "U", ---@type string
            focus_testcases = "H", ---@type string
            focus_result = "L", ---@type string
        }
    }
end

return M
