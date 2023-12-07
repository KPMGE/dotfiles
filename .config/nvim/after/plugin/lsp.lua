-- mappings
vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format() end)

vim.diagnostic.config({
  virtual_text = true,
})

-- Define custom diagnostic signs
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl='DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignError', { text = '', texthl='DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl='DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl='DiagnosticSignHint' })

local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>dws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>df", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "<leader>dn", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "<leader>dp", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<a-cr>", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>drf", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>drn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
  },
})
