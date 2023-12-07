local builtin = require('telescope.builtin')

vim.g.current_dir = vim.fn.getcwd()

function find_from_root()
  builtin.find_files({ cwd = vim.g.current_dir })
end

vim.keymap.set('n', '<leader>tf', builtin.find_files, {})
vim.keymap.set('n', '<leader>trf', find_from_root, {})
vim.keymap.set('n', '<leader>tg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ts', function() 
  builtin.grep_string({ 
    search = vim.fn.input("grep > "),
    cwd = vim.g.current_dir
  }) 
end)
