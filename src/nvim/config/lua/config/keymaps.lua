-- Move selected lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Centered navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "[[", "[[zz")
vim.keymap.set("n", "]]", "]]zz")
vim.keymap.set("n", "(", "(zz")
vim.keymap.set("n", ")", ")zz")

-- Clipboard & paste
vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set("n", "p", "p`[")

vim.keymap.set("n", "<leader>yy", '"+y')
vim.keymap.set("v", "<leader>yy", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>d", '"+d')
vim.keymap.set("v", "<leader>d", '"+d')

vim.keymap.set("n", "Q", "<nop>")

-- Quickfix & location list shortcuts
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")

-- Search & replace
vim.keymap.set("n", "<leader>rW", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>rw", ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>rs", ":%s/<C-r><C-w>//g<Left><Left>")
vim.keymap.set("v", "<leader>rs", ":s/@//g<Left><Left>")
vim.keymap.set("n", "<leader>re", ":%s/$//<Left>")
vim.keymap.set("v", "<leader>re", ":s/$//<Left>")

vim.keymap.set("n", "<leader>sW", ':let @/=\'\\<<C-R>=expand("<cword>")<CR>\\>\'<CR>:set hls<CR>')
vim.keymap.set("n", "<leader>sw", ':let @/=\'<C-R>=expand("<cword>")<CR>\'<CR>:set hls<CR>')
vim.keymap.set("n", "<leader>ss", ":let @/=''<Left>")
vim.keymap.set("v", "<leader>sv", '"+y<CR>/<C-r>"<CR>')

-- Explorer & selection
vim.keymap.set("n", "<leader>on", vim.cmd.Ex)
vim.keymap.set("n", "<leader>sa", "gg+V+G")

-- Keep selection after indentation
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Window navigation
vim.keymap.set("n", "<M-Left>", "<C-w>h")
vim.keymap.set("n", "<M-Down>", "<C-w>j")
vim.keymap.set("n", "<M-Up>", "<C-w>k")
vim.keymap.set("n", "<M-Right>", "<C-w>l")

-- Tab navigation
vim.keymap.set("n", "<M-Tab>", ":tabnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":tabprev<CR>")

-- Terminal mappings
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")
vim.keymap.set("t", "<M-Tab>", "<C-\\><C-n>:tabnext<CR>")

-- Fast vertical movement
vim.keymap.set("n", "<S-Up>", "<Up><Up><Up><Up>")
vim.keymap.set("i", "<S-Up>", "<Up><Up><Up><Up>")
vim.keymap.set("v", "<S-Up>", "<Up><Up><Up><Up>")
vim.keymap.set("n", "<S-Down>", "<Down><Down><Down><Down>")
vim.keymap.set("i", "<S-Down>", "<Down><Down><Down><Down>")
vim.keymap.set("v", "<S-Down>", "<Down><Down><Down><Down>")

-- Debug window options helper
vim.keymap.set("n", "<leader>v1", function()
   local win_number = vim.api.nvim_get_current_win()
   local v = vim.wo[win_number]
   print(v.tostring())
end)
