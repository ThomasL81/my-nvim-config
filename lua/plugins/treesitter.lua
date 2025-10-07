-- treesitter.lua
vim.pack.add({
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter.git', version = 'master'}
})

local ts = require('nvim-treesitter.configs')
ts.setup{
    ensure_installed = { 'c', 'cpp', 'hlsl', 'odin', 'lua', 'vim', 'vimdoc', 'query', 'typescript', 'svelte', 'markdown', 'yaml' },
    highlight = { enable = true, },
    additional_vim_regex_highlighting  = false,
}

vim.api.nvim_create_autocmd('PackChanged', {
    desc = 'Handle nvim-treesitter updates',
    group = vim.api.nvim_create_augroup('nvim-treesitter-pack-changed-update-handler', { clear = true }),
    callback = function(event)
        if event.data.kind == 'update' and event.data.spec.name == 'nvim-treesitter' then
            vim.notify('nvim-treesitter updated, running TSUpdate...', vim.log.levels.INFO)
            local ok = pcall(vim.cmd, 'TSUpdate')
            if ok then
                vim.notify('TSUpdate completed succesfully', vim.log.levels.INFO)
            else
                vim.notify('TSUpdate command not available yet, skipping', vim.log.levels.WARN)
            end
        end
    end,
})
