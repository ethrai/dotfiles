return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "BufEnter",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {},
        auto_install = true,
        ignore_install = {},
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        modules = {},
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = {
      enable = true,      -- Enable this plugin (Can be enabled/disabled later via commands)
      multiwindow = true, -- Enable multiwindow support.
      max_lines = 3,      -- How many lines the window should span. Values <= 0 mean no limit.
      mode = "cursor",    -- Line used to calculate context. Choices: 'cursor', 'topline'
    },
  },
}
