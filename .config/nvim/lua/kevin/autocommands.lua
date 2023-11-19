-- set all .md files to be markdown 
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*.md',
  callback = function()
    vim.bo.filetype = 'markdown'
  end
})
