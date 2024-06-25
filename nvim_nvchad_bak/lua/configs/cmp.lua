local cmp = require "cmp"
cmp.setup.cmdline("/", {
  sources = cmp.config.sources({
    { name = "nvim_lsp_document_symbol" },
  }, {
    { name = "buffer" },
  }),
})

cmp.mapping.preset.insert {
  ["<A-c>"] = cmp.mapping.complete(),
}
