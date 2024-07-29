return {
  "knubie/vim-kitty-navigator",
  config = function()
    vim.cmd [[
    let g:kitty_navigator_enable_stack_layout = 1
    let g:kitty_navigator_no_mappings = 1

    ]]
  end,
}
