vim.g.mapleader=','

vim.g.fileformat="unix"

vim.opt.updatetime=50

vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.background='dark'
vim.opt.clipboard='unnamedplus'
vim.opt.signcolumn='yes'
vim.opt.scrolloff=15

vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.softtabstop=-1                    -- follow shiftwidth setting
vim.opt.wrap=false

vim.opt.hlsearch=false
vim.opt.ignorecase=true
vim.opt.incsearch=true

--vim.opt.syntax='ON'
vim.opt.termguicolors=true
vim.opt.colorcolumn='160'

vim.g.netrw_fastbrowse=0                -- close the netrw buffer when a file is open

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath('data') .. "/undodir"
vim.opt.undofile = true
