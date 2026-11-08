local settings = require("plugins.modules.ai.settings")
local adapter = "claude_code"

-- Same defaults for the CLI view, as command-line flags.
local cli_args = {}
if settings.mode then vim.list_extend(cli_args, { "--permission-mode", settings.mode }) end
if settings.model then vim.list_extend(cli_args, { "--model", settings.model }) end
if settings.effort then vim.list_extend(cli_args, { "--effort", settings.effort }) end

require("codecompanion").setup({
  adapters = {
    acp = {
      claude_code = function()
        return require("codecompanion.adapters").extend("claude_code", {
          defaults = {
            session_config_options = {
              mode = settings.mode,
              model = settings.model,
              thought_level = settings.effort,
            },
          },
        })
      end,
    },
  },
  interactions = {
    chat = { adapter = adapter },
    inline = { adapter = adapter },
    cli = {
      agent = "claude_code",
      agents = {
        claude_code = { cmd = "claude", args = cli_args, description = "Claude Code CLI" },
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
