vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- Sane options for neovim
local opt = vim.opt

opt.clipboard = "unnamedplus"
opt.completeopt = "menu,menuone,noselect"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true
opt.inccommand = "nosplit"
opt.linebreak = true
opt.number = true
opt.relativenumber = true
opt.scrolloff = 5
opt.sidescrolloff = 8

-- TODO: learn what each does
opt.shiftwidth = 2 -- how much spaces shifted with >><<
opt.tabstop = 2 -- the number of spaces in a tab, user for shiftwidth when last one is 0
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
---

opt.signcolumn = "yes"
opt.smoothscroll = true
opt.smartcase = true
opt.splitbelow = true
opt.splitright = true
opt.splitkeep = "screen"
opt.termguicolors = true
opt.undofile = true
opt.undolevels = 1000
opt.updatetime = 500
opt.virtualedit = "block"
opt.wrap = false
