return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup {
      fps = 40,
      level = 1,
      timeout = 750,
      top_down = false,
    }
  end,
}
