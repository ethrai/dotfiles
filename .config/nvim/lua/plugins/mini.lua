return {
  { "echasnovski/mini.ai",         version = false, event = "VeryLazy", opts = {} },
  { "echasnovski/mini.pairs",      version = false, event = "VeryLazy", opts = {} },
  { "echasnovski/mini.surround",   version = false, event = "VeryLazy", opts = {} },
  { "echasnovski/mini.comment",    version = false, event = "VeryLazy", opts = {} },
  { "echasnovski/mini.move",       version = false, event = "VeryLazy", opts = {} },
  { "echasnovski/mini.cursorword", version = false, event = "VeryLazy", opts = {} },
  {
    "echasnovski/mini.indentscope",
    lazy = true,
    version = false,
    event = "VeryLazy",
    config = function()
      local indentscope = require("mini.indentscope")
      indentscope.setup({
        draw = {
          animation = require("mini.indentscope").gen_animation.none(),
        },
        symbol = "│",
        options = { try_as_border = true },
      })
    end,
  },
}
