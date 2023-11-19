-- general
lvim.log.level = "warn"
-- lualine set
lvim.builtin.lualine.style = "default" -- or "none"
lvim.colorscheme = "gruvbox-material"  -- colorscheme
lvim.format_on_save = false            -- format file on save
vim.opt.hlsearch = false               -- highlight all matches on previous search pattern
vim.opt.ignorecase = true              -- ignore case in search patterns
vim.opt.showmode = false               -- we don't need to see things like -- INSERT -- anymore
vim.opt.timeoutlen = 10                -- time to wait for a mapped sequence to complete (in milliseconds)
vim.o.numberwidth = 2
vim.o.textwidth = 80
vim.o.signcolumn = 'yes'
vim.o.updatetime = 30 -- update time
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
vim.opt.swapfile = false                   -- creates a swapfile
vim.opt.termguicolors = true               -- set term gui colors (most terminals support this)
vim.opt.smartindent = true                 -- make indenting smarter again
vim.opt.mouse = "a"                        -- allow the mouse to be used in neovim
vim.opt.autoindent = true                  -- autoindent
vim.opt.relativenumber = true              -- set relativenumbers
vim.opt.hidden = true                      -- set hidden buffer
vim.opt.incsearch = true                   -- set incremental search
vim.opt.autochdir = true                   -- change directory automaticly
vim.opt.scrolloff = 8                      -- stops the scroll when 8 lines remain
vim.opt.sidescrolloff = 8
vim.opt.cmdheight = 1                      -- less space in the neovim command line for displaying messages
lvim.transparent_window = true
vim.opt.completeopt = 'menuone'
lvim.line_wrap_cursor_movement = false -- don't go to the next/previous line after reach and/start

-- Mappings and another configurations
-- set ctrl + e to open and close NvimTree explorer
lvim.keys.normal_mode["<C-e>"] = ":NvimTreeFindFileToggle<cr> | :NvimTreeResize 50 <cr>"
-- set ctrl + f to open vim telescope
lvim.keys.normal_mode["<C-f>"] = ":Telescope find_files<cr>"
-- set ctrl + n to go to the next window in burffer
lvim.keys.normal_mode["<C-n>"] = ":BufferLineCycleNext<cr>"
-- set ctrl + p to go to the previous window in burffer
lvim.keys.normal_mode["<C-p>"] = ":BufferLineCyclePrev<cr>"
-- set ctrl + x to close the current window in buffer
lvim.keys.normal_mode["<C-x>"] = ":BufferKill<cr>"
-- set ctrl + w to toggle diagnostics
lvim.keys.normal_mode["<C-w>"] = ":TroubleToggle<cr>"
-- goes to the previous occurence on the buffer
lvim.keys.normal_mode["<leader>dp"] = ":cprevious<cr>"
-- goes to the next occurence on the buffer
lvim.keys.normal_mode["<leader>dn"] = ":cnext<cr>"
-- open embedded terminal
lvim.keys.normal_mode["<C-t>"] = ":ToggleTerm<cr>"
-- open telescope live grep
lvim.keys.normal_mode["<leader>lg"] = ":Telescope live_grep<cr>"
-- center pointer when using ctrl+d
lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
-- center pointer when using ctrl+u
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"

lvim.keys.normal_mode[")"] = ":Gitsigns next_hunk<cr>"
lvim.keys.normal_mode["("] = ":Gitsigns prev_hunk<cr>"

-- harpoon
-- lvim.keys.normal_mode["<C-i>"] = ":lua require('harpoon.ui').toggle_quick_menu()<cr>"

-- another configs
-- Enable / Disable virtual text
vim.diagnostic.config({ virtual_text = true })

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}


-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
}

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.hide_dotfiles = 0
lvim.builtin.terminal.shading_factor = 1
lvim.builtin.terminal.close_on_exit = true
lvim.builtin.terminal.direction = 'horizontal'

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "rust",
  "go",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings

-- automatic installation of servers
-- lvim.lsp.installer = true

-- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   {
--     exe = "prettier",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact", "python", "javascript", "javascriptreact" },
--   },
-- }

-- Additional Plugins
lvim.plugins = {
  -- plugin for markers
  { 'kshenoy/vim-signature' },
  -- vim pdf
  { 'makerj/vim-pdf' },
  -- multicursors
  -- { 'mg979/vim-visual-multi'},
  -- my plugin, still in development
  { "KPMGE/vim-rq" },
  -- vim repeat, for repeating patterns with .
  { "tpope/vim-repeat" },
  { 'folke/trouble.nvim' },
  { 'sbdchd/neoformat' },
  -- autoclose tags
  { 'windwp/nvim-ts-autotag' },
  -- colorscheme
  { 'sainnhe/gruvbox-material' },
  { 'tpope/vim-rhubarb' },
  -- add icons
  { 'ryanoasis/vim-devicons' },
  { 'frazrepo/vim-rainbow' },
  -- add emoji support
  { 'junegunn/vim-emoji' },
  -- flutter
  -- {
  --   'akinsho/flutter-tools.nvim',
  --   lazy = false,
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --     'stevearc/dressing.nvim',   -- optional for vim.ui.select
  --   },
  --   config = true,
  -- },
  -- vimwiki
  { 'vimwiki/vimwiki' },
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup()
      -- refer to `configuration to change defaults`
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
  -- vim fugitive
  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit"
    },
    ft = { "fugitive" }
  },
  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
  {
    "felipec/vim-sanegx",
    event = "BufRead",
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require "lsp_signature".on_attach() end,
  },
  {
    "metakirby5/codi.vim",
    cmd = "Codi",
  },
  {
    "romgrk/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup {
        enable = true,   -- Enable this plugin (Can be enabled/disabled later via commands)
        throttle = true, -- Throttles plugin updates (may improve performance)
        max_lines = 0,   -- How many lines the window should span. Values <= 0 mean no limit.
        patterns = {
          -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
          -- For all filetypes
          -- Note that setting an entry here replaces all other patterns for this entry.
          -- By setting the 'default' entry below, you can control which nodes you want to
          -- appear in the context window.
          default = {
            'class',
            'function',
            'method',
          },
        },
      }
    end
  },
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup({
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-s"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      })
    end,
  },
}

-------------- GRUVBOX MATERIAL -------------
-- background intensity
vim.g.gruvbox_material_background = 'hard'
-- mark the current work in bold
vim.g.gruvbox_material_current_word = 'bold'
-- enable italic
vim.g.gruvbox_material_enable_italic = true
-- enable bold on selection
vim.g.gruvbox_material_enable_bold = true
-- set transparent background
vim.g.gruvbox_material_transparent_background = 1
-- underline on errors
vim.g.gruvbox_material_diagnostic_text_highlight = false
vim.g.gruvbox_material_ui_contrast = 'high'
vim.g.gruvbox_material_diagnostic_line_highlight = 1


-- set all .md files to be markdown 
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*.md',
  callback = function()
    vim.bo.filetype = 'markdown'
  end
})

-- set the filetype of css files to scss
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*.css',
  callback = function()
    vim.bo.filetype = 'scss'
  end
})

-- ignores .git and node_modules for telescope
lvim.builtin.telescope.defaults.file_ignore_patterns = { ".git", "node_modules" }

-- ts-auto-tag config
require('nvim-ts-autotag').setup()
-- peek config
require('peek').setup({
  auto_load = true,         -- whether to automatically load preview when
                            -- entering another markdown buffer
  close_on_bdelete = true,  -- close preview window on buffer delete

  syntax = true,            -- enable syntax highlighting, affects performance

  theme = 'dark',           -- 'dark' or 'light'

  update_on_change = true,

  app = 'webview',          -- 'webview', 'browser', string or a table of strings
                            -- explained below

  filetype = { 'markdown' },-- list of filetypes to recognize as markdown

  -- relevant if update_on_change is true
  throttle_at = 200000,     -- start throttling when file exceeds this
                            -- amount of bytes in size
  throttle_time = 'auto',   -- minimum amount of time in milliseconds
                            -- that has to pass before starting new render
})
