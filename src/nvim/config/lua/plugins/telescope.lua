return {
   "nvim-telescope/telescope.nvim",
   branch = "0.1.x",
   dependencies = { "nvim-lua/plenary.nvim" },
   cmd = "Telescope",
   keys = {
      {
         "<leader>ff",
         function()
            require("telescope.builtin").find_files()
         end,
         desc = "Telescope find files",
      },
      {
         "<C-p>",
         function()
            require("telescope.builtin").git_files()
         end,
         desc = "Telescope git files",
      },
      {
         "<leader>gs",
         function()
            require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
         end,
         desc = "Telescope grep string",
      },
      {
         "<leader>fg",
         function()
            require("telescope.builtin").live_grep()
         end,
         desc = "Telescope live grep",
      },
      {
         "<leader>fb",
         function()
            require("telescope.builtin").buffers()
         end,
         desc = "Telescope buffers",
      },
      {
         "<leader>fh",
         function()
            require("telescope.builtin").help_tags()
         end,
         desc = "Telescope help tags",
      },
   },
   opts = {
      defaults = {
         file_ignore_patterns = {
            "^./build/.*",
            "^./node%_modules/.*",
         },
      },
   },
}
