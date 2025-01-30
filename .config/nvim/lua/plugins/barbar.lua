return {
  "romgrk/barbar.nvim",
  event = "VeryLazy",
  dependencies = {
    { "lewis6991/gitsigns.nvim",     lazy = true },
    { "nvim-tree/nvim-web-devicons", lazy = true },
  },
  opts = {
    animation = false,
    auto_hide = 1,
  },
}
