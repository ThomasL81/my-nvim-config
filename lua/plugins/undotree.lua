-- undotree.lua
vim.pack.add({
    { src = 'https://github.com/mbbill/undotree.git', version = 'master', },
})

vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)
