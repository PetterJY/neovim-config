-- To reload Neovim config:
-- :source $MYVIMRC

-- Load core modules
require("settings")
require("keymaps")
require("autocmds")

-- Plugins + plugin configs
require("plugins.init")

-- Visual settings
require("plugins.modules.visuals")

-- LSP
require("lsp.init")
