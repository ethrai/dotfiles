return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "gopls",
          "yamlls",
          "taplo",
          "bashls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local servers = { "html", "cssls", "yamlls", "taplo", "gopls", "lua_ls" }

      -- lsps with default config
      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup({
          capabilities = capabilities,
        })
      end

      lspconfig.bashls.setup({
        filetypes = { "sh", "bash" },
      })

      local opts = { noremap = true, silent = true }
      vim.keymap.set({ "n" }, "<leader>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set({ "n" }, "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set({ "n" }, "ge", vim.diagnostic.goto_next, opts)
      vim.keymap.set({ "n" }, "gw", vim.diagnostic.goto_prev, opts)
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
      vim.keymap.set({ "n", "i" }, "<C-c>", vim.lsp.buf.signature_help, opts)
      vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
      vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
      vim.keymap.set("n", "<space>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, opts)
      vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
      vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)
    end,
  },
}
