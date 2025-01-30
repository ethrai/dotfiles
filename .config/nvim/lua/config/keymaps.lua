local map = vim.keymap.set

-- Move by visible lines. Notes:
-- - Don't map in Operator-pending mode because it severely changes behavior:
--   like `dj` on non-wrapped line will not delete it.
-- - Condition on `v:count == 0` to allow easier use of relative line numbers.
map({ "n", "x" }, "j", [[v:count == 0 ? 'gj' : 'j']], { expr = true })
map({ "n", "x" }, "k", [[v:count == 0 ? 'gk' : 'k']], { expr = true })

map("n", "gO", "<Cmd>call append(line('.') - 1, repeat([''], v:count1))<CR>")
map("n", "go", "<Cmd>call append(line('.'),     repeat([''], v:count1))<CR>")

-- Copy/paste with system clipboard
map({ "n", "x" }, "gy", '"+y', { desc = "Copy to system clipboard" })
map("n", "gp", '"+p', { desc = "Paste from system clipboard" })
-- - Paste in Visual with `P` to not copy selected text (`:h v_P`)
map("x", "gp", '"+P', { desc = "Paste from system clipboard" })

-- Reselect latest changed, put, or yanked text
map(
  "n",
  "gV",
  '"`[" . strpart(getregtype(), 0, 1) . "`]"',
  { expr = true, replace_keycodes = false, desc = "Visually select changed text" }
)

-- Search inside visually highlighted text. Use `silent = false` for it to
-- make effect immediately.
map("x", "g/", "<esc>/\\%V", { silent = false, desc = "Search inside visual selection" })

map("n", "<C-S>", "<Cmd>silent! update | redraw<CR>", { desc = "Save" })
map({ "i", "x" }, "<C-S>", "<Esc><Cmd>silent! update | redraw<CR>", { desc = "Save and go to Normal mode" })

-- Window navigation
map("n", "<C-H>", "<C-w>h", { desc = "Focus on left window" })
map("n", "<C-J>", "<C-w>j", { desc = "Focus on below window" })
map("n", "<C-K>", "<C-w>k", { desc = "Focus on above window" })
map("n", "<C-L>", "<C-w>l", { desc = "Focus on right window" })

-- Window resize (respecting `v:count`)
map(
  "n",
  "<C-Left>",
  '"<Cmd>vertical resize -" . v:count1 . "<CR>"',
  { expr = true, replace_keycodes = false, desc = "Decrease window width" }
)
map(
  "n",
  "<C-Down>",
  '"<Cmd>resize -"          . v:count1 . "<CR>"',
  { expr = true, replace_keycodes = false, desc = "Decrease window height" }
)
map(
  "n",
  "<C-Up>",
  '"<Cmd>resize +"          . v:count1 . "<CR>"',
  { expr = true, replace_keycodes = false, desc = "Increase window height" }
)
map(
  "n",
  "<C-Right>",
  '"<Cmd>vertical resize +" . v:count1 . "<CR>"',
  { expr = true, replace_keycodes = false, desc = "Increase window width" }
)

-- Clear highlight
map("n", "<esc>", "<cmd>nohl<cr>")
map("n", ";", ":")

-- Move in quickfix
map("n", "<M-j>", "<cmd>cnext<cr>")
map("n", "<M-k>", "<cmd>cprev<cr>")

-- Oil
map("n", "-", "<cmd>Oil<cr>")
map("n", "_", "<cmd>Oil .<cr>")

-- FzfLua
map("n", "<leader><leader>", "<cmd>FzfLua files<cr>")
map("n", "<leader>sk", "<cmd>FzfLua keymaps<cr>")
map("n", "<leader>fo", "<cmd>FzfLua oldfiles<cr>")
map("n", "<leader>fb", "<cmd>FzfLua buffers<cr>")
map("n", "<leader>ft", "<cmd>FzfLua tabs<cr>")
map("n", "<leader>fj", "<cmd>FzfLua jumps<cr>")
map({ "n" }, "<leader>/", "<cmd>FzfLua live_grep_native<cr>")
map("v", "<leader>/", "<cmd>FzfLua grep_visual<cr>")
map("n", "<leader>?", "<cmd>FzfLua grep_curbuf<cr>")
map("n", "<leader><cr>", "<cmd>FzfLua resume<cr>")
map("n", "<leader>gc", "<cmd>FzfLua git_commits<cr>")
map("n", "<leader>gl", "<cmd>FzfLua git_bcommits<cr>")
map("n", "<leader>gb", "<cmd>FzfLua git_branches<cr>")

-- LSP+FzfLua stuff
map("n", "gr", "<cmd>FzfLua lsp_references<cr>")
map("n", "gd", "<cmd>FzfLua lsp_definitions<cr>")
map("n", "gD", "<cmd>FzfLua lsp_declarations<cr>")
map("n", "gt", "<cmd>FzfLua lsp_typedefs<cr>")
map("n", "gi", "<cmd>FzfLua lsp_implementations<cr>")
map("n", "<leader>fs", "<cmd>FzfLua lsp_document_symbols<cr>")
map("n", "<leader>ca", "<cmd>FzfLua lsp_code_actions<cr>")
map("n", "<leader>fl", "<cmd>FzfLua lsp_live_workspace_symbols<cr>")
map("n", "<leader>fd", "<cmd>FzfLua lsp_document_diagnostics<cr>")
map("n", "<leader>fw", "<cmd>FzfLua lsp_workspace_diagnostics<cr>")

-- Just LSP
map("n", "<leader>rn", function()
  vim.lsp.buf.rename()
end)

map("n", "<leader>cf", function()
  vim.lsp.buf.format()
end)
