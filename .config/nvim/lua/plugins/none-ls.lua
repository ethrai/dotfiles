return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.golines,
        null_ls.builtins.formatting.goimports_reviser.with({
          "-rm-unused",
          "-set-alias",
          "-format",
        }),
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.shfmt,

        -- TODO: make diagnostics tools update in real time, e.g. not after writing file
        null_ls.builtins.diagnostics.gitlint,
        null_ls.builtins.diagnostics.checkmake,

        null_ls.builtins.code_actions.gomodifytags,
        null_ls.builtins.code_actions.impl,
        null_ls.builtins.code_actions.refactoring,
      },
    })
  end,
}
