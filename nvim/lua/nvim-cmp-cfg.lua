-- Set up nvim-cmp.
local cmp = require'cmp'
local luasnip = require'luasnip'

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { 'i', 's' }),

    }),
    sources = cmp.config.sources({
        -- { name = 'nvim_lsp' },
        -- { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
        -- DeepSeek help
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'emoji' }, -- Add this for fun :)
    }),
    formatting = {
      format = function(entry, vim_item)
        vim_item.menu = ({
          nvim_lsp = '[LSP]',
          luasnip = '[Snip]',
          buffer = '[Buf]',
          path = '[Path]',
        })[entry.source.name]
        return vim_item
      end
    }
})

-- Set up lspconfig.
--local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
--require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
--    capabilities = capabilities
--}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config("emmet_language_server", {
  filetypes = {
    "css",
    "eruby",
    "html",
    "javascript",
    "javascriptreact",
    "less",
    "sass",
    "scss",
    "pug",
    "typescriptreact"
  },
  -- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
  -- **Note:** only the options listed in the table are supported.
  init_options = {
    ---@type table<string, string>
    includeLanguages = {},
    --- @type string[]
    excludeLanguages = {},
    --- @type string[]
    extensionsPath = {},
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
    preferences = {},
    --- @type boolean Defaults to `true`
    showAbbreviationSuggestions = true,
    --- @type "always" | "never" Defaults to `"always"`
    showExpandedAbbreviation = "always",
    --- @type boolean Defaults to `false`
    showSuggestionsAsSnippets = false,
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
    syntaxProfiles = {},
    --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
    variables = {},
  },
})

vim.lsp.config("clangd", {
  capabilities = capabilities,
  filetypes = {"c"},
})
vim.lsp.config("gopls", {
  capabilities = capabilities,
  filetypes = {"go"},
})
vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  filetypes = {"lua"},
})
vim.lsp.config("ts_ls", {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { 
    "typescript", 
    "typescriptreact", 
    "typescript.tsx", 
    "javascript", 
    "javascriptreact",
    "jsx"
  },
  init_options = {
    preferences = {
      includeCompletionsForModuleExports = true,
      includeCompletionsWithInsertText = true,
      includeAutomaticOptionalChainCompletions = true,
      includeCompletionsWithSnippetText = true,
    }
  }
})
vim.lsp.config("cssls", {
  capabilities = capabilities,
  filetypes = {"css", "scss"},
})
vim.lsp.config("html", {
  capabilities = capabilities,
  filetypes = {"html"},
})
vim.lsp.config("intelephense", {
  capabilities = capabilities,
  filetypes = {"php"},
})

-- Enhanced JSX completion
local function setup_jsx_completion()
  -- Auto-close tags for JSX/TSX files
  vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'javascriptreact', 'typescriptreact' },
    callback = function()
      -- Enable emmet for JSX
      vim.b.emmet_html = 1

      -- Custom key mapping for JSX expansion
      vim.keymap.set('i', '<C-y>', function()
        local line = vim.api.nvim_get_current_line()
        local col = vim.api.nvim_win_get_cursor(0)[2]
        local before = line:sub(1, col)

        -- Simple JSX completion trigger
        if before:match('<[A-Z][%w]*$') then
          return '<Tab>'
        end
        return '<C-y>'
      end, { buffer = true, expr = true })
    end
  })
end

setup_jsx_completion()
