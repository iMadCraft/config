function ColorMyPencils(color)
   color = color or "slate"
   vim.cmd.colorscheme(color)
end

ColorMyPencils()
