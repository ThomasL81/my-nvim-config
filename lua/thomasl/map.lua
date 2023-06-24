vim.opt.termguicolors=true
vim.g.mapleader=' '

vim.opt.number=true
vim.opt.relativenumber=true

vim.opt.background="dark"

vim.opt.autoindent=false
vim.opt.smartindent=false
vim.opt.cindent=true
vim.opt.cinwords="if","else","while","do","for"
vim.opt.cinoptions="l1"

vim.opt.clipboard="unnamedplus"

vim.opt.expandtab=true
vim.opt.smarttab=true
vim.opt.shiftwidth=4
vim.opt.tabstop=8
vim.opt.softtabstop=-1                    -- follow shiftwidth setting
vim.opt.wrap=false

vim.opt.hlsearch=false
vim.opt.ignorecase=true
vim.opt.incsearch=true

vim.opt.syntax="ON"
vim.opt.termguicolors=true
--vim.opt.cursorcolumn=true
--vim.opt.colorcolumn="80"

vim.opt.scrolloff = 10
vim.opt.signcolumn="yes"

vim.opt.updatetime=50

vim.g.netrw_fastbrowse=0                -- close the netrw buffer when a file is open

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath('data') .. "/undodir"
vim.opt.undofile = true

vim.keymap.set("n", "<leader>pv", "<cmd>Explore<cr>") --function() vim.cmd([[Explore]]) end)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") 
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") 
vim.keymap.set("x", "<leader>p", "\"_dP") 
