
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
    pattern = { "*.odin" },
    callback = function() 
        vim.cmd([[set nocindent]])
        vim.cmd([[set smartindent]])
    end,
})
