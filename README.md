# Neovim config

Personal Neovim configuration.
It requires **Neovim 0.12+** as it uses the `vim.pack` plugin-manager.
The plugins and keymaps used in this config is described in [doc/PLUGINS.md](doc/PLUGINS.md) and [doc/KEYMAPS.md](doc/KEYMAPS.md).

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
    │   ├── pylsp.lua
    │   └── lua.lua
    └── plugins/
        ├── init.lua
        └── modules/
            ├── cmp.lua
            ├── highlighting.lua
            ├── tools.lua
            ├── visuals.lua
            └── navigation/
                ├── telescope.lua
                └── nvim-tree.lua
```

`init.lua` is the entry point and loads everything else in order. The core
files in `lua/` (`settings.lua`, `keymaps.lua`, `autocmds.lua`) hold editor
options, general keymaps and autocommands, and don't depend on any plugin.
`lua/lsp/` has one file per language server; each one configures its server and
enables it, so it starts when you open a matching file. `lua/plugins/init.lua`
lists every plugin for `vim.pack` to install, then loads each plugin's config
from `lua/plugins/modules/`. `nvim-pack-lock.json` records the exact plugin
versions so every machine installs the same ones.

## Notes

- Language servers are **not** installed automatically. Install `clangd`,
  `pylsp` and `lua-language-server` on each machine; `:checkhealth vim.lsp`
  shows which ones Neovim finds.
- Update plugins with `:lua vim.pack.update()`, then `:write` to apply.
- Reload the config with `:restart`.
