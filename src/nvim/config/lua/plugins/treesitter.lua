return {
   "nvim-treesitter/nvim-treesitter",
   branch = "master",
   build = ":TSUpdate",
   main = "nvim-treesitter.configs",
   opts = {
      -- A list of parser names, or "all"
      ensure_installed = { "c", "javascript", "typescript", "rust", "sql", "lua", "vim", "vimdoc" },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = true,

      highlight = {
         enable = true,
         additional_vim_regex_highlighting = false,
      },
   },
}
