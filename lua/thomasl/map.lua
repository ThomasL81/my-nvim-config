vim.o.termguicolors=true
vim.g.mapleader=' '

vim.o.number=true
vim.o.relativenumber=true

vim.o.background="dark"

vim.o.autoindent=false
vim.o.smartindent=false
vim.o.cindent=true
vim.o.cinwords="if","else","while","do","for"

vim.o.clipboard="unnamedplus"

vim.o.expandtab=true
vim.o.smarttab=true
vim.o.shiftwidth=4
vim.o.tabstop=8
vim.o.softtabstop=-1                    -- follow shiftwidth setting
vim.o.wrap=false

vim.o.hlsearch=false
vim.o.ignorecase=true
vim.o.incsearch=true

vim.o.syntax="ON"
vim.o.termguicolors=true
vim.o.cursorcolumn=true
vim.o.colorcolumn="80"

vim.o.scrolloff = 10
vim.o.signcolumn="yes"

vim.o.updatetime=50

vim.g.netrw_fastbrowse=0                -- close the netrw buffer when a file is open

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath('data') .. "/undodir"
vim.opt.undofile = true

vim.keymap.set("n", "<leader>pv", function() vim.cmd([[Explore]]) end)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") 
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") 
vim.keymap.set("x", "<leader>p", "\"_dP") 
