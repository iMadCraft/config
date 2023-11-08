local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
   -- see :help lsp-zero-keybindings
   -- to learn the available actions
   lsp.default_keymaps({buffer = bufnr})
end)

-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.tsserver.setup {}
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}


-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

require('mason').setup({})
require('mason-lspconfig').setup({
   ensure_installed = {
      'clangd',
      'eslint',
      'rust_analyzer',
   },
   handlers = {
      lsp.default_setup,
   },
})


-- local lspconfig = require('lspconfig');
-- lspconfig.lua_language_server.setup ({
--   settings = {
   --     Lua = {
      --       diagnostics = {
         --         -- Get the language server to recognize the `vim` global
         --         globals = {'vim'},
         --       },
         --     },
         --   },
         -- })

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
   window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
   },
   mapping = cmp.mapping.preset.insert({
      ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
      ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ['<C-c>'] = cmp.mapping.abort(),
   })
})

