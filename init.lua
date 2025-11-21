-- Lazy 
require("config.lazy") 
require("config.keymaps")

-- Enable syntax highlighting
vim.cmd("syntax on")
vim.cmd("colorscheme catppuccin")

-- Search settings
vim.opt.ignorecase = true -- set ic
vim.opt.incsearch = true -- set is
vim.opt.hlsearch = true -- set hlsearch

vim.diagnostic.config({
  virtual_lines = {
    current_line = true
  }
})

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
vim.opt.tabstop = 4 
vim.opt.shiftwidth = 4 
vim.opt.expandtab = true

