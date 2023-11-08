local function fexists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

require("prime.remap")
require("prime.lazy")

-- plugins
require("prime.plugins.colors")
require("prime.plugins.telescope")
require("prime.plugins.treesitter")
--require("prime.plugins.harpoon")
require("prime.plugins.undotree")
require("prime.plugins.lsp")

local rc_file = vim.fn.getcwd() .. "/nvimrc.lua";
if fexists(rc_file) then
   require("nvimrc")
end
