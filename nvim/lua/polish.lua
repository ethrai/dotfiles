-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
vim.keymap.set("n", "gp", "`[v`]", { silent = true })
-- nnoremap gp `[v`]
vim.filetype.add {
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
}

require("catppuccin").setup {
  transparent_background = true,
}
