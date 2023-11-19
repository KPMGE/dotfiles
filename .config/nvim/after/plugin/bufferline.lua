require("bufferline").setup({})

-- set ctrl + n to go to the next window in burffer
vim.keymap.set("n", "<C-n>", ":BufferLineCycleNext<cr>")
-- set ctrl + p to go to the previous window in burffer
vim.keymap.set("n", "<C-p>", ":BufferLineCyclePrev<cr>")
-- set ctrl + x to close the current window in buffer
vim.keymap.set("n", "<C-x>", ":bdelete<cr>")
