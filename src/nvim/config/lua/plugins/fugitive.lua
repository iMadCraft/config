return {
   "tpope/vim-fugitive",
   cmd = { "Git", "G", "Gdiffsplit", "Gvdiffsplit", "Gread", "Gwrite", "Ggrep", "GMove", "GDelete", "GBrowse" },
   keys = {
      { "<leader>Gs", "<cmd>Git<CR>", desc = "Git status (Fugitive)" },
   },
}
