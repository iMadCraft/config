-- Just to remove all warnings except on this row
local vim = vim;
local api = vim.api;

vim.g.mapleader = " "

vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false 

vim.opt.number = true
vim.opt.ruler = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.local/cache/nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.opt.cursorline = true
vim.cmd( [[highlight ColorColumn ctermbg=0 guibg=#232222]] )

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv'")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv'")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>yy", "\"+y")
vim.keymap.set("v", "<leader>yy", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"+d")
vim.keymap.set("v", "<leader>d", "\"+d")

vim.keymap.set("n", "Q", "<nop>")

-- quikfix shortcuts
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")

vim.keymap.set("n", "<leader>rW", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>rw", ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>rs", ":%s/<C-r><C-w>//g<Left><Left>")
vim.keymap.set("v", "<leader>rs", ":s/@//g<Left><Left>")
vim.keymap.set("n", "<leader>re", ":%s/$//<Left>")
vim.keymap.set("v", "<leader>re", ":s/$//<Left>")

vim.keymap.set("n", "<leader>on", vim.cmd.Ex)
vim.keymap.set("n", "<leader>sa", "gg+V+G")

--
-- Custom
--
--
vim.keymap.set("n", "<leader>sW", ":let @/='\\<<C-R>=expand(\"<cword>\")<CR>\\>'<CR>:set hls<CR>")
vim.keymap.set("n", "<leader>sw", ":let @/='<C-R>=expand(\"<cword>\")<CR>'<CR>:set hls<CR>")
vim.keymap.set("n", "<leader>ss", ":let @/=''<Left>")

-- Keep selection after indentation
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<M-Left>", "<C-w>h")
vim.keymap.set("n", "<M-Down>", "<C-w>j")
vim.keymap.set("n", "<M-Up>", "<C-w>k")
vim.keymap.set("n", "<M-Right>", "<C-w>l")

-- Keep position when pasting
vim.keymap.set("n", "p", "p`[")

-- Switch between tabs
vim.keymap.set("n", "<M-Tab>", ":tabnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":tabprev<CR>")

vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")
vim.keymap.set("t", "<M-Tab>", "<C-\\><C-n>:tabnext<CR>")

-- Enter insert mode then swithcing to Termnal
vim.cmd( [[ autocmd BufWinEnter,WinEnter term://* startinsert ]] )

-- Disable number for terminal
vim.cmd( [[ autocmd TermOpen * setlocal nonumber norelativenumber ]] )

vim.keymap.set("n", "<S-Up>", "<Up><Up><Up><Up>")
vim.keymap.set("i", "<S-Up>", "<Up><Up><Up><Up>")
vim.keymap.set("n", "<S-Down>", "<Down><Down><Down><Down>")
vim.keymap.set("i", "<S-Down>", "<Down><Down><Down><Down>")

vim.keymap.set("n", "<leader>v1", function ()
   local win_number = api.nvim_get_current_win()
   local v = vim.wo[win_number]
   print(v.tostring())
   -- local all_options = api.nvim_get_all_options_info()
   -- local result = ""
   -- for key, val in pairs(all_options) do
   --     if val.global_local == false and val.scope == "win" then
   --         result = result .. "|" .. key .. "=" .. tostring(v[key] or "<not set>")
   --     end
   -- end
   -- print(result)
end)
