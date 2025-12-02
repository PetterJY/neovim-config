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
    vim.keymap.set("n", "<leader>gd", ":G diff<CR>")
end

return M
