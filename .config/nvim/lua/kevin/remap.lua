vim.g.mapleader = ' '

-- set ctrl + e to open and close NvimTree explorer
vim.keymap.set("n", "<C-e>", ':NvimTreeFindFileToggle<cr> | :NvimTreeResize 50 <cr>')

-- map ctrl + l to ctrl + w + l
vim.keymap.set("n", "<C-l>", "<C-w>l")
-- map ctrl + h to ctrl + w + h
vim.keymap.set("n", "<C-h>", "<C-w>h")
-- map ctrl + j to ctrl + w + j
vim.keymap.set("n", "<C-j>", "<C-w>j")
-- map ctrl + k to ctrl + w + k
vim.keymap.set("n", "<C-k>", "<C-w>k")


-- center pointer when using ctrl+d
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- center pointer when using ctrl+u
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- move selected text up and down
vim.keymap.set("v", "J", " :m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", " :m '<-2<cr>gv=gv")

-- keep a term even when i paste it
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy from and into clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>Y", "\"+Y")

-- disable Q
vim.keymap.set("n", "Q", "<nop>")

-- set ctrl + w to trigger buffer completition
vim.keymap.set('i', '<C-w>', '<C-x><C-n>')

--lvim.keys.normal_mode[")"] = ":Gitsigns next_hunk<cr>"
--lvim.keys.normal_mode["("] = ":Gitsigns prev_hunk<cr>"
