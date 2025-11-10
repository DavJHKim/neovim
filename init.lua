-- Lazy 
require("config.lazy") 

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Enable syntax highlighting
vim.cmd("syntax on")

-- Search settings
vim.opt.ignorecase = true -- set ic
vim.opt.incsearch = true -- set is
vim.opt.hlsearch = true -- set hlsearch

-- Line numbers 
vim.cmd("set number relativenumber")

-- Command-line completion menu 
vim.cmd("set wildmode=list:longest,list:full")

-- Highlight ONLY the current line number
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"  -- restrict highlight to the number column only
vim.cmd([[
  highlight CursorLineNr cterm=bold ctermfg=yellow guifg=#ffff00
]])

-- Indentation 
vim.opt.tabstop = 2 
vim.opt.shiftwidth = 2 
vim.opt.expandtab = true

