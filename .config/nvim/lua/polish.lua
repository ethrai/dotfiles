-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
vim.keymap.set("n", "gp", "`[v`]", { silent = true })
vim.keymap.set("n", "P", '"0p', { silent = true })
vim.keymap.set("n", ",f", "")
-- nnoremap gp `[v`]
vim.filetype.add {
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
}
-- Hyprlang LSP
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.hl", "hypr*.conf" },
  callback = function(event)
    print(string.format("starting hyprls for %s", vim.inspect(event)))
    vim.lsp.start {
      name = "hyprlang",
      cmd = { "hyprls" },
      root_dir = vim.fn.getcwd(),
    }
  end,
})
-- Came back to beam cursor on exit
-- vim.cmd [[
--     augroup RestoreCursorShapeOnExit
--         autocmd!
--         autocmd VimLeave * set guicursor=a:ver1
--     augroup END
-- ]]
