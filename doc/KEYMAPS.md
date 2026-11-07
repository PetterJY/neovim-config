# Keymaps

Leader is `<Space>`.

## General

| Keys | Action |
| --- | --- |
| `jj` (insert) | Escape |
| `<leader>y` / `<leader>Y` | Yank to system clipboard / yank line |
| `<leader>p` (visual) | Paste without overwriting the register |
| `J` / `K` (visual) | Move selection down / up |
| `<S-Tab>` (insert) | Dedent |
| `<leader>lw` / `<leader>le` | Wrap / don't wrap lines |
| `<C-d>` `<C-u>` `j` `k` `n` `N` | Movement, kept centered |

## Tabs and splits

| Keys | Action |
| --- | --- |
| `<leader>tn` / `tc` / `to` | New tab / close tab / close other tabs |
| `<leader>tl` / `th` | Next / previous tab |
| `<leader>t1`–`t9` | Go to tab 1–9 |
| `<C-w>n` | Horizontal split |
| `<C-w>e` | New split with an empty buffer |
| `<C-w>c` | Close split (empty buffer if it's the last one) |

## LSP

Available when a language server is attached to the buffer.

| Keys | Action |
| --- | --- |
| `gd` / `gi` | Go to definition / implementation |
| `grr` | References (Telescope) |
| `K` / `<C-k>` | Hover / signature help |
| `<leader>rn` | Rename |
| `<leader>ca` | Code action |
| `<leader>f` | Format buffer (also runs on save for C, C++, C#, Python, Lua) |
| `<leader>ds` / `<leader>ws` | Document / workspace symbols (Telescope) |

## Diagnostics

| Keys | Action |
| --- | --- |
| `<leader>de` | Show diagnostic |
| `<leader>dn` / `<leader>dp` | Next / previous diagnostic (opens the diagnostic) |
| `<leader>dq` | Diagnostics to location list |

## Completion

Insert mode, handled by blink.cmp. The signature of the function you're typing
arguments for shows automatically.

| Keys | Action |
| --- | --- |
| `<C-Space>` | Open completion; when open, toggle the documentation window |
| `<CR>` | Accept |
| `<Tab>` / `<S-Tab>` | Next / previous item, or jump between snippet fields |
| `<C-n>` / `<C-p>` | Next / previous item |
| `<C-e>` | Close |

## Telescope

| Keys | Action |
| --- | --- |
| `<leader>ps` | Grep project |
| `<leader>pf` / `pF` / `pA` | Git files / all files / including hidden + ignored |
| `<leader>pb` | Search current buffer |
| `<leader>pg` | Git commits |
| `<leader>pc` / `pC` | Command history / commands |
| `<leader>pk` | Keymaps |
| `<leader>pt` | Treesitter symbols |
| `<leader>cs` | Choose colorscheme (with preview) |

## Tools

| Keys | Action |
| --- | --- |
| `<leader>e` / `<leader>R` | Toggle / refresh file tree |
| `<leader>u` | Toggle undotree |
| `<leader>gs` / `<leader>gb` | Git status / blame |
