local adapter = "claude_code"

require("codecompanion").setup({
  interactions = {
    chat = { adapter = adapter },
    inline = { adapter = adapter },
    cli = {
      agent = "claude_code",
      agents = {
        claude_code = { cmd = "claude", args = {}, description = "Claude Code CLI" },
      },
    },
  },
})

local map = vim.keymap.set
map("n", "<leader>aa", "<cmd>CodeCompanionChat Toggle<CR>", { desc = "Toggle AI chat" })
map("n", "<leader>an", "<cmd>CodeCompanionChat<CR>", { desc = "New AI chat" })
map("v", "<leader>av", "<cmd>CodeCompanionChat Add<CR>", { desc = "Add selection to chat" })
map({ "n", "v" }, "<leader>ap", "<cmd>CodeCompanionActions<CR>", { desc = "AI action palette" })
map("n", "<leader>ai", "<cmd>CodeCompanion<CR>", { desc = "Inline AI prompt" })
map("v", "<leader>ai", ":CodeCompanion<CR>", { desc = "Inline AI prompt on selection" })
map("n", "<leader>ac", "<cmd>CodeCompanionCLI<CR>", { desc = "Claude Code CLI" })
map("n", "<leader>ar", "<cmd>CodeCompanionCodeReview<CR>", { desc = "Review AI changes" })
