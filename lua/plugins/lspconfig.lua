return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",
          "lua_ls",
          "rust_analyzer",
          "gopls"
        }
      })
    end

  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.clangd.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        filetypes = {"html", "latte" },
        capabilities = capabilities
      })
      lspconfig.css_variables.setup({
        capabilities = capabilities
      })
      lspconfig.gopls.setup({
        capabilities = capabilities
      })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    end
  }
}

