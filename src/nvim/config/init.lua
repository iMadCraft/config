-- Load core configuration before lazy.nvim (sets mapleader, options, etc.)
require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.colors")

-- Bootstrap and load lazy.nvim + plugin specs from lua/plugins/
require("config.lazy")
