vim.pack.add({
    { src = 'https://github.com/nvim-tree/nvim-web-devicons.git', version = 'master' },
    { src = 'https://github.com/nvim-lualine/lualine.nvim.git', version = 'master' },
})

local ll = require('lualine')
ll.setup{
    options = { theme = 'ayu_dark' }
}

