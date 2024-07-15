return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup {
      keymaps = {
        accept_suggestion = "<C-f>",
        clear_suggestion = "<C-n>",
        accept_word = "<C-j>",
        accept_line = "<C-k>",
        -- accept_buffer = "<C-l>",
      },
      ignore_filetypes = { cpp = true },
      log_level = "off", -- set to "off" to disable logging completely
      disable_inline_completion = false, -- disables inline completion for use with cmp
      disable_keymaps = false, -- disables built in keymaps for more manual control
    }
  end,
}
