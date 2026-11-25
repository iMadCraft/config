local terminal_group = vim.api.nvim_create_augroup("UserTerminal", { clear = true })

-- Enter insert mode when switching to a terminal buffer
vim.api.nvim_create_autocmd({ "BufWinEnter", "WinEnter" }, {
   group = terminal_group,
   pattern = "term://*",
   command = "startinsert",
})

-- Disable line numbers in terminal buffers
vim.api.nvim_create_autocmd("TermOpen", {
   group = terminal_group,
   pattern = "*",
   callback = function()
      vim.opt_local.number = false
      vim.opt_local.relativenumber = false
   end,
})
