return {
  {
    "echasnovski/mini.basics",
    version = false,
    lazy = false,
    priority = 900,
    enabled = false,

    opts = {
      basic = true,
      extra_ui = false,
      win_borders = "solid",
      mappings = {
        windows = true,
      },
      autocommands = {
        basic = true,
        relnum_in_visual_mode = false,
      },
    },
  },
  { "echasnovski/mini.ai",         version = false, opts = {} },
  { "echasnovski/mini.pairs",      version = false, opts = {} },
  { "echasnovski/mini.surround",   version = false, opts = {} },
  { "echasnovski/mini.icons",      version = false, opts = {} },
  { "echasnovski/mini.comment",    version = false, lazy = true, event = "VeryLazy", opts = {} },
  { "echasnovski/mini.move",       version = false, opts = {} },
  { "echasnovski/mini.cursorword", version = false, opts = {} },
  {
    "echasnovski/mini.indentscope",
    version = false,
    opts = {},
  },
  { "echasnovski/mini.statusline", version = false, opts = {} },
}
