return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    local cmp = require "cmp"
    opts.sources = cmp.config.sources {
      { name = "nvim_lsp", priority = 900 },
      { name = "luasnip", priority = 1000 },
      { name = "buffer", priority = 500 },
      { name = "path", priority = 250 },
    }
    opts.mapping["<Tab>"] = cmp.config.disable
  end,
}
