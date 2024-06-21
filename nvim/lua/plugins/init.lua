local plugins = {

  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "gopls",
        "golangci-lint",
        "golangci-lint-langserver",
        "gofumpt",
      },
    },
  },

  {
    "nvimtools/none-ls.nvim",
    ft = "go",
    config = function()
      local null_ls = require "null-ls"
      null_ls.setup {
        sources = {
          null_ls.builtins.diagnostics.golangci_lint,
          null_ls.builtins.completion.spell,
        },
      }
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "go",
        "bash",
        "javascript",
        "json",
      },
    },
  },

  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  {
    "terryma/vim-multiple-cursors",
    lazy = false,
    -- init = function()
    --   vim.g.multi_cursor_start_word_key = "<C-n>"
    --   vim.g.multi_cursor_select_all_word_key = "<A-n>"
    --   vim.g.multi_cursor_start_key = "g<C-n>"
    --   vim.g.multi_cursor_select_all_key = "g<A-n>"
    --   vim.g.multi_cursor_next_key = "<C-n>"
    --   vim.g.multi_cursor_prev_key = "<C-p>"
    --   vim.g.multi_cursor_skip_key = "<C-x>"
    --   vim.g.multi_cursor_quit_key = "<Esc>"
    -- end,
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function(_, opts)
      require("nvim-surround").setup(opts)
    end,
  },
  {
    "smoka7/hop.nvim",
    lazy = false,
    version = "*",
    opts = {
      keys = "asdfghjkl;'",
    },
  },
  {
    "wellle/targets.vim",
    lazy = false,
  },
  {
    "unblevable/quick-scope",
    lazy = false,
    init = function()
      vim.g.qs_highlight_on_keys = { "f", "F" }
    end,
  },
  { "michaeljsmith/vim-indent-object", lazy = false },
  { "mfussenegger/nvim-dap" },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    -- branch = "develop", -- if you want develop branch
    -- keep in mind, it might break everything
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    -- (optional) will update plugin's deps on every update
    build = function()
      vim.cmd.GoInstallDeps()
    end,
  },
}

return plugins
