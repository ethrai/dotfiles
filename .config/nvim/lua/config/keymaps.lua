local map = vim.keymap.set

map("n", "<esc>", "<cmd>nohl<cr>")

map("n", "-", "<cmd>Oil<cr>")
map("n", "_", "<cmd>Oil .<cr>")

-- FzfLua
map("n", "<leader><leader>", "<cmd>FzfLua files<cr>")
map("n", "<leader>fb", "<cmd>FzfLua buffers<cr>")
map("n", "<leader>fj", "<cmd>FzfLua jumps<cr>")
map("n", "<leader>/", "<cmd>FzfLua live_grep<cr>")

-- Lsp stuff
map("n", "gr", "<cmd>FzfLua lsp_references<cr>")
map("n", "gd", "<cmd>FzfLua lsp_definitions<cr>")
map("n", "gD", "<cmd>FzfLua lsp_declarations<cr>")
map("n", "gt", "<cmd>FzfLua lsp_typedefs<cr>")
map("n", "gi", "<cmd>FzfLua lsp_implementations<cr>")
map("n", "<leader>fs", "<cmd>FzfLua lsp_document_symbols<cr>")
map("n", "<leader>fl", "<cmd>FzfLua lsp_live_workspace_symbols<cr>")
map("n", "<leader>fd", "<cmd>FzfLua lsp_document_diagnostics<cr>")
map("n", "<leader>fw", "<cmd>FzfLua lsp_workspace_diagnostics<cr>")
