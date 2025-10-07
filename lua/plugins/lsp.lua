-- lsp.lua
vim.lsp.config('*', { root_markers = '.git' })

vim.lsp.enable('clangd')
vim.lsp.enable('luals')
vim.lsp.enable('sap_cds')
vim.lsp.enable('ts_ls')
vim.lsp.enable('eslint')

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspKeymaps', { clear = true }),
    callback = function(ev)
        local opts = { buffer = ev.buf, }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    end
})
