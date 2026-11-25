local filename = "error.txt"

local function check_file()
   (vim.uv or vim.loop).fs_stat(filename, function(err)
      if err then
         print(err)
      else
         vim.schedule(function()
            vim.cmd("cfile " .. filename)
         end)
      end
   end)
end

vim.keymap.set("n", "<leader>er", check_file, { desc = "Load error.txt into quickfix" })
vim.keymap.set("n", "<leader>ee", function()
   vim.cmd("cnext")
end, { desc = "Next quickfix item" })
