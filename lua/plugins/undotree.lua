-- undotree.lua
vim.pack.add({
    { src = 'https://github.com/mbbill/undotree.git', version = 'master', },
}, { confirm = false })

vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)
