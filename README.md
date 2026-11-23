# Neovim config

Personal Neovim configuration.
It requires **Neovim 0.12+** as it uses the `vim.pack` plugin-manager.
The plugins and keymaps used in this config are described in [doc/PLUGINS.md](doc/PLUGINS.md) and [doc/KEYMAPS.md](doc/KEYMAPS.md).

## Structure

```
nvim/
├── init.lua
├── nvim-pack-lock.json
├── after/
│   └── ftplugin/
│       └── cs.lua
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
    │   ├── csharp.lua
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

`init.lua` is the entry point and loads everything else in order. The core files in `lua/` (`settings.lua`, `keymaps.lua`, `autocmds.lua`) hold editor options, general keymaps and autocommands, and don't depend on any plugin. `lua/lsp/` has one file per language server; with the exception of `csharp.lua`, each one configures its server and enables it, so it starts when you open a matching file. `lua/plugins/init.lua` lists every plugin for `vim.pack` to install, then loads each plugin's config from `lua/plugins/modules/`. `after/ftplugin/` holds per-filetype options. `nvim-pack-lock.json` records the exact plugin versions so every machine installs the same ones.

## Notes

- Mason automatically installs the language servers clangd, pylsp, ruff, and lua_ls.
- C# uses Microsoft's Roslyn server through roslyn.nvim. However, Mason's version of the roslyn-server is too old compared to what roslyn.nvim requires. Instead, it needs the .NET SDK and the server installed as a dotnet global tool:
  ```
  dotnet tool install -g roslyn-language-server --prerelease
  ```
  `~/.dotnet/tools` must be on `PATH`. If a folder has several solutions, choose one with `:Roslyn target`.
- Treesitter parsers are only installed if `tree-sitter` is executable. Install `tree-sitter-cli` with `:MasonInstall tree-sitter-cli`.
- CodeCompanion uses Claude Code. The chat and inline prompts need [`claude-agent-acp`](https://github.com/zed-industries/claude-agent-acp) on `PATH`, and the CLI view needs the `claude` CLI. 
