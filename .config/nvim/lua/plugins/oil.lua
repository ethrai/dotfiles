return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    default_file_explorer = true,
    columns = {
      "icon",
    },
    view_options = {
      show_hidden = true,
    },
  },
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  lazy = false,
}
