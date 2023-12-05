require'cmp'.setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- The following example advertise capabilities to `clangd`.
require'lspconfig'.gopls.setup {
  capabilities = capabilities,
}
require'lspconfig'.dartls.setup {
  capabilities = capabilities,
}
require'lspconfig'.lua_ls.setup {
  capabilities = capabilities,
}
require'lspconfig'.sqlls.setup {
  capabilities = capabilities,
}
