require "nvchad.mappings"

local set = vim.keymap.set

local opts = {
  silent = true,
}

set("n", ";", ":", { desc = "CMD enter command mode" })

set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)
set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)
set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts)

-- Easymotion
set("n", ",f", ":HopPattern<CR>", opts)
set("n", ",l", ":HopLine<CR>", opts)
set("n", ",c", ":HopChar1<CR>", opts)

-- Dap
local dap = require "dap"
set("n", "<leader>dt", dap.toggle_breakpoint, { desc = "debug toggle breakpoint" })
set("n", "<leader>dc", dap.continue, { desc = "debug toggle breakpoint" })
set("n", "<leader>do", dap.step_over, { desc = "debug step over" })
set("n", "<leader>di", dap.step_into, { desc = "debug step into" })
set("n", "<leader>du", dap.step_out, { desc = "debug step out" })
set("n", "<leader>dq", dap.terminate, { desc = "debug terminate" })

set({ "n", "v" }, "<Leader>dh", function()
  require("dap.ui.widgets").hover()
end, { desc = "debug open widget " })

set({ "n", "v" }, "<Leader>dp", function()
  require("dap.ui.widgets").preview()
end, { desc = "debug preview widget" })

set("n", "<Leader>df", function()
  local widgets = require "dap.ui.widgets"
  widgets.centered_float(widgets.frames)
end)

set("n", "<Leader>dus", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "debug open local sidebar" })

set("n", "<Leader>ds", function()
  local widgets = require "dap.ui.widgets"
  widgets.centered_float(widgets.scopes)
end)

-- Dap tests
set("n", "<leader>dgt", function()
  require("dap-go").debug_test()
end, { desc = "debug go test on a cursor" })

set("n", "<leader>dgl", function()
  require("dap-go").debug_last()
end, { desc = "debug go test on a cursor" })

-- Gopher nvim
set("n", "<leader>gsj", "<cmd> GoTagAdd json<CR>", { desc = "Add json struct tag" })
set("n", "<leader>gsj", "<cmd> GoTagAdd yaml<CR>", { desc = "Add yaml struct tag" })
