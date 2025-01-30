vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- Sane options for neovim
local opt = vim.opt

-- General
opt.undofile = true
opt.undolevels = 1000

opt.backup = false -- Don't store backup while overwriting the file
opt.writebackup = false -- Don't store backup while overwriting the file

vim.cmd("filetype plugin indent on") -- Enable all filetype plugins

-- Appearance
opt.breakindent = true -- Indent wrapped lines to match line start
opt.cursorline = true -- Highlight current line
opt.linebreak = true -- Wrap long lines at 'breakat' (if 'wrap' is set)
opt.number = true -- show line numbers
opt.relativenumber = true
opt.splitbelow = true -- Horizontal splits will be below
opt.splitright = true -- Vertical splits will be to the right

opt.ruler = false -- Don't show cursor position in command line
opt.showmode = false -- Don't show mode in command line
opt.wrap = false -- Display long lines as just one line

opt.signcolumn = "yes" -- Always show sign column (otherwise it will shift text)
opt.fillchars = "eob: " -- Don't show `~` outside of buffer

-- Editing
opt.ignorecase = true -- Ignore case when searching (use `\C` to force not doing that)
opt.incsearch = true -- Show search results while typing
opt.infercase = true -- Infer letter cases for a richer built-in keyword completion
opt.smartcase = true -- Don't ignore case when searching if pattern has upper case
opt.smartindent = true -- Make indenting smart

opt.completeopt = "menuone,noinsert,noselect" -- Customize completions
opt.virtualedit = "block" -- Allow going past the end of line in visual block mode
opt.formatoptions = "qjl1" -- Don't autoformat comments

opt.shortmess:append("WcC") -- Reduce command line messages
opt.splitkeep = "screen" -- Reduce scroll during window split

-- opt.fillchars:append("solid")
----------------------------------------------------------------------------
--- Pre mini.basics option
-- opt.completeopt = "menu,menuone,noselect"
-- opt.grepprg = "rg --vimgrep"
-- opt.ignorecase = true
-- opt.inccommand = "nosplit"
-- opt.linebreak = true
-- opt.number = true
-- opt.scrolloff = 5
-- opt.sidescrolloff = 8
--
-- -- TODO: learn what each does
-- opt.shiftwidth = 2 -- how much spaces shifted with >><<
-- opt.tabstop = 2    -- the number of spaces in a tab, user for shiftwidth when last one is 0
-- opt.expandtab = true
-- opt.autoindent = true
-- opt.smartindent = true
-- ---
--
-- opt.signcolumn = "yes"
-- opt.smoothscroll = true
-- opt.smartcase = true
-- opt.splitbelow = true
-- opt.splitright = true
-- opt.splitkeep = "screen"
-- opt.updatetime = 500
-- opt.wrap = false
