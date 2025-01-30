return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
  event = "VeryLazy",
  opts = {
    theme = "tokyonight",
    sections = {
      lualine_c = {
        "filename",
        {
          "harpoon2",
        },
      },
    },
  },
}
