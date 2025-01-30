return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
  event = "VeryLazy",
  opts = {
    "max-perf",
    winopts = {
      height = 0.9,
      width = 0.9,
      border = "solid",
      treesitter = {
        enabled = false,
      },
      preview = {
        border = "solid",
        default = "bat",
      },
    },
    grep = {
      hidden = true,
      rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 --glob=!.git/* -e",
    },
  },
}
