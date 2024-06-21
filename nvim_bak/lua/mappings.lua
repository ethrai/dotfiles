local map = vim.keymap.set
local opts = { silent = true }

map("n", ";", ":", {})

map("n", "<leader>n", ":nohl<CR>")
map("n", "<leader>w", ":w<CR>")
map({ "n", "i" }, "<C-s>", ":w<CR>")
map("n", "<leader>qq", ":q!<CR>")
map("n", "<leader>qa", ":qa!<CR>")
map("n", "<leader>a", ":wqa<CR>")
map({ "n" }, "<leader>c", ":close<CR>")

map({ "i", "n" }, "<C-k>", "<Up>")
map({ "i", "n" }, "<C-l>", "<Right>")
map({ "i", "n" }, "<C-j>", "<Down>")
map({ "i", "n" }, "<C-h>", "<Left>")

map("n", ",f", ":HopPattern<CR>", opts)
map("n", ",l", ":HopLine<CR>", opts)
map("n", ",c", ":HopChar1<CR>", opts)

-- vimrc

vim.cmd([[
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

let g:qs_highlight_on_keys = ['f', 'F']
]])
