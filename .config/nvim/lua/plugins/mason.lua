return {
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    opts = {},
  },

  {
    "williamboman/mason-lspconfig.nvim",
    event = "BufEnter",
    dependencies = {
      "williamboman/mason.nvim",
    },
    opts = {
      ensure_installed = {
        "gopls",
        "lua_ls",
      },
    },
  },
}
