require("toggleterm").setup({
  size = 20
})

function open_term_from_root_dir() 
  vim.cmd.ToggleTerm({ args = { 'dir=' .. vim.g.current_dir }}) 
end

-- open toggle term from current_dir
vim.keymap.set('n', '<leader>rt', open_term_from_root_dir)

-- open toggleterm
vim.keymap.set('n', '<C-t>', ':ToggleTerm<cr>')

-- change between terminal and vim buffer with ctrl+j and ctrl+k
vim.keymap.set('t', '<C-j>', '<C-\\><C-N><C-w>j')
vim.keymap.set('t', '<C-k>', '<C-\\><C-N><C-w>k')
