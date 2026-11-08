-- Default AI settings, applied when a new chat or Claude Code CLI starts.
-- Set a value to nil to use Claude Code's own default.
-- In a chat, you can see and change them with `/acp_session_options`,
-- and `gd` shows the current values.

return {
  -- Permission mode:
  --   "default"           Ask before edits and commands (Manual)
  --   "acceptEdits"       Edit files without asking, ask before commands
  --   "plan"              Read-only: explore and plan, no changes
  --   "auto"              Claude decides what needs approval
  --   "bypassPermissions" Never ask (use with care)
  mode = "default",

  -- Model, e.g. "opus", "sonnet", "haiku". nil = Claude Code's default.
  model = nil,

  -- Effort (reasoning level): "low", "medium", "high", "xhigh", "max".
  -- Which levels are available depends on the model.
  effort = "medium",
}
