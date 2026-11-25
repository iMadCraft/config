function ColorMyPencils(color)
   color = color or "slate"
   vim.cmd.colorscheme(color)

   vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = 0, bg = "#3a3a3a" })
   vim.api.nvim_set_hl(0, "CursorLine", { ctermbg = 0, bg = "#3a3a3a" })
   vim.api.nvim_set_hl(0, "CursorLineNr", { cterm = { bold = true }, bold = true })
   vim.api.nvim_set_hl(0, "StatusLine", { ctermbg = 0, bg = "#ffab00", fg = "#3a3a3a" })
   vim.api.nvim_set_hl(0, "StatusLineNC", { ctermbg = 0, bg = "#3a3a3a" })
   vim.api.nvim_set_hl(0, "MsgArea", { ctermbg = 0, bg = "#3a3a3a" })
   vim.api.nvim_set_hl(0, "ModeMsg", { ctermbg = 0, bg = "#ffab00", fg = "#3a3a3a" })
   vim.api.nvim_set_hl(0, "MoreMsg", { ctermbg = 0, bg = "#ffab00", fg = "#3a3a3a" })
   vim.api.nvim_set_hl(0, "WinSeparator", { ctermbg = 0, bg = "#ffab00", fg = "#3a3a3a" })
end

ColorMyPencils()
