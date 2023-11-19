-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.webdevicons_enable = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.opt.backup = false -- no backups
vim.opt.swapfile = false                   -- creates a swapfile
vim.opt.undofile = true -- enable undos
vim.opt.undodir = os.getenv('HOME') .. "/.vim/undodir" -- directory for undos
vim.opt.wrap = false                   -- no wrap
vim.opt.hlsearch = false               -- highlight all matches on previous search pattern
vim.opt.ignorecase = true              -- ignore case in search patterns
vim.opt.showmode = false               -- we don't need to see things like -- INSERT -- anymore
vim.o.numberwidth = 2
vim.o.textwidth = 80
vim.o.signcolumn = 'yes'
vim.opt.updatetime = 50 -- update time
vim.o.cindent = true
vim.o.history = 50
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.title = true                       -- set the title of window to the value of the titlestring
vim.opt.fileencoding = "utf-8"             -- the encoding written to a file
vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
vim.opt.cursorline = false                 -- don't highlight the current line
vim.opt.expandtab = true                   -- convert tabs to spaces
vim.opt.shiftwidth = 2                     -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                        -- insert 2 spaces for a tab
vim.opt.smartcase = true                   -- smart case
vim.opt.termguicolors = true               -- set term gui colors (most terminals support this)
vim.opt.smartindent = true                 -- make indenting smarter again
vim.opt.mouse = "a"                        -- allow the mouse to be used in neovim
vim.opt.autoindent = true                  -- autoindent
vim.opt.relativenumber = true              -- set relativenumbers
vim.opt.hidden = true                      -- set hidden buffer
vim.opt.incsearch = true                   -- set incremental search
vim.opt.autochdir = true                   -- change directory automaticly
vim.opt.scrolloff = 8                      -- stops the scroll when 8 lines remain
--vm.opt.sidescrolloff = 8
vim.opt.cmdheight = 1                      -- less space in the neovim command line for displaying messages
vim.opt.completeopt = 'menuone'
