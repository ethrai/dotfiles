local au = function(event, pattern, callback, desc)
  vim.api.nvim_create_autocmd(event, { group = gr, pattern = pattern, callback = callback, desc = desc })
end

au("TextYankPost", "*", function()
  vim.highlight.on_yank()
end, "Highlight yanked text")
