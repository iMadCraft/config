-- Leader keys (must be set before lazy.nvim loads)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Indentation
vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Display & UI
vim.opt.wrap = false
vim.opt.number = true
vim.opt.ruler = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
vim.opt.cursorline = true
-- vim.opt.termguicolors = true

-- Files & Undo
vim.opt.swapfile = false
vim.opt.backup = false

local undodir = os.getenv("HOME") .. "/.local/cache/nvim/undodir"
if vim.fn.isdirectory(undodir) == 0 then
   vim.fn.mkdir(undodir, "p")
end
vim.opt.undodir = undodir
vim.opt.undofile = true

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Misc
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
