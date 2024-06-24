require "nvchad.mappings"

local map = vim.keymap.set

local opts = {
  silent = true,
}

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)
map("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)
map("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
map("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts)

-- Easymotion
map("n", ",f", ":HopPattern<CR>", opts)
map("n", ",l", ":HopLine<CR>", opts)
map("n", ",c", ":HopChar1<CR>", opts)

-- Dap
local dap = require "dap"
map("n", "<leader>dt", dap.toggle_breakpoint, { desc = "debug toggle breakpoint" })
map("n", "<leader>dc", dap.continue, { desc = "debug toggle breakpoint" })
map("n", "<leader>do", dap.step_over, { desc = "debug step over" })
map("n", "<leader>di", dap.step_into, { desc = "debug step into" })
map("n", "<leader>du", dap.step_out, { desc = "debug step out" })
map("n", "<leader>dq", dap.terminate, { desc = "debug terminate" })

map({ "n", "v" }, "<Leader>dh", function()
  require("dap.ui.widgets").hover()
end, { desc = "debug open widget " })

map({ "n", "v" }, "<Leader>dp", function()
  require("dap.ui.widgets").preview()
end, { desc = "debug preview widget" })

map("n", "<Leader>df", function()
  local widgets = require "dap.ui.widgets"
  widgets.centered_float(widgets.frames)
end)

map("n", "<Leader>dus", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "debug open local sidebar" })

map("n", "<Leader>ds", function()
  local widgets = require "dap.ui.widgets"
  widgets.centered_float(widgets.scopes)
end)

-- Dap tests
map("n", "<leader>dgt", function()
  require("dap-go").debug_test()
end, { desc = "debug go test on a cursor" })

map("n", "<leader>dgl", function()
  require("dap-go").debug_last()
end, { desc = "debug go test on a cursor" })

-- Gopher nvim
map("n", "<leader>gsj", "<cmd> GoTagAdd json<CR>", { desc = "Add json struct tag" })
map("n", "<leader>gsj", "<cmd> GoTagAdd yaml<CR>", { desc = "Add yaml struct tag" })

-- Telescope
map(
  "n",
  "<leader>ff",
  "<cmd>Telescope find_files find_command=rg,--hidden,--files<cr>",
  { desc = "telescope find files" }
)

-- Lsp pickers
local telescope = require "telescope.builtin"
map("n", "<leader>fs", telescope.lsp_document_symbols, { desc = "telescope find files" })
