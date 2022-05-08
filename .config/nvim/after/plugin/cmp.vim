set completeopt=menu,menuone    " Diplay completion menu

lua << EOF
  local cmp = require'cmp'

  cmp.setup({
    -- Snippet engine : This is require for cmp to work
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },

    -- Mapping
    mapping = {
      ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item.
      ['<C-n>'] = cmp.mapping.select_next_item(),         -- Next suggestion
      ['<C-b>'] = cmp.mapping.select_prev_item(),         -- Prev suggestion
    },

    -- Config
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' },
    }, {
      { name = 'buffer' },
    })
  })

  -- Setup cmp for / search
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {{ name = 'buffer' }}
  })

  -- Setup cmp for command
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({{ name = 'path' }}, {{ name = 'cmdline' }})
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Do not forget to add lsp to the following list for cmp to work
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
EOF
