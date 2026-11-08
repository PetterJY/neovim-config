# Neovim config

Personal Neovim configuration.
It requires **Neovim 0.12+** as it uses the `vim.pack` plugin-manager.
The plugins and keymaps used in this config are described in [doc/PLUGINS.md](doc/PLUGINS.md) and [doc/KEYMAPS.md](doc/KEYMAPS.md).

## Structure

```
nvim/
├── init.lua
├── nvim-pack-lock.json
├── doc/
│   ├── PLUGINS.md
│   └── KEYMAPS.md
└── lua/
    ├── settings.lua
    ├── keymaps.lua
    ├── autocmds.lua
    ├── lsp/
    │   ├── init.lua
    │   ├── clangd.lua
    │   ├── lua.lua
    │   ├── pylsp.lua
    │   └── ruff.lua
    └── plugins/
        ├── init.lua
        └── modules/
            ├── cmp.lua
            ├── highlighting.lua
            ├── markdown.lua
            ├── mason.lua
            ├── tools.lua
            ├── visuals.lua
            ├── ai/
            │   ├── init.lua
            │   └── codecompanion.lua
            └── navigation/
                ├── telescope.lua
                └── nvim-tree.lua
```

`init.lua` is the entry point and loads everything else in order. The core files in `lua/` (`settings.lua`, `keymaps.lua`, `autocmds.lua`) hold editor options, general keymaps and autocommands, and don't depend on any plugin. `lua/lsp/` has one file per language server; each one configures its server and enables it, so it starts when you open a matching file. `lua/plugins/init.lua` lists every plugin for `vim.pack` to install, then loads each plugin's config from `lua/plugins/modules/`. `nvim-pack-lock.json` records the exact plugin versions so every machine installs the same ones.

## Notes

- Mason automatically installs the language servers clangd, pylsp, ruff, and lua_ls.
- CodeCompanion uses Claude Code. The chat and inline prompts need [`claude-agent-acp`](https://github.com/zed-industries/claude-agent-acp) on your `PATH`, and the CLI view needs the `claude` CLI. Both use your Claude Code login.
