-- empty setup using defaults
require("nvim-tree").setup()

function open_from_current_dir()
  vim.cmd.NvimTreeToggle({ args = { vim.g.current_dir }})
end

vim.keymap.set('n', '<leader>pr', open_from_current_dir)
