require('vim-opts')

vim.g.mapleader = ' '
-- @Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- @Plugins
require("lazy").setup("plugins")


-- @Keymaps
vim.keymap.set('n', '<leader>n', ':nohl<CR>')

vim.keymap.set('n', '<leader>w', ':w<CR>')

vim.keymap.set('n', '<leader>qq', ':q!<CR>')
vim.keymap.set('n', '<leader>qa', ':qa!<CR>')

vim.keymap.set('n', '<leader>a', ':wqa<CR>')


vim.keymap.set({'n'}, '<c-h>', '<c-w>h')
vim.keymap.set({'n'}, '<c-l>', '<c-w>l')
