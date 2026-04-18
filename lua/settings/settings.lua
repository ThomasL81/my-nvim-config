vim.g.mapleader=','

vim.g.fileformat="unix"

vim.opt.updatetime=50

vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.background='dark'
vim.opt.clipboard='unnamedplus'
vim.opt.signcolumn='yes'
vim.opt.scrolloff=15

vim.opt.cindent=true
vim.opt.cinoptions="l1"

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
vim.opt.winborder = 'rounded'
vim.opt.completeopt = 'menuone,noselect,popup,preview'

-- vim.cmd[[set completeopt+=menuone,noselect,popup,preview]]

local virt_lines_ns = vim.api.nvim_create_namespace 'on_diagnostic_jump'

--- @param diagnostic? vim.Diagnostic
--- @param bufnr integer
local function on_jump(diagnostic, bufnr)
    if not diagnostic then return end

    vim.diagnostic.show(
        virt_lines_ns,
        bufnr,
        { diagnostic },
        { virtual_lines = { current_line = true }, virtual_text = false }
    )
end

vim.diagnostic.config({ jump = { on_jump = on_jump } })
