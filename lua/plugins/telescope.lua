-- telescope.lua
vim.pack.add({
    { src = 'https://github.com/nvim-lua/plenary.nvim.git', version = 'master' },
    { src = 'https://github.com/nvim-telescope/telescope.nvim.git', version = 'master' },
})

local ts = require('telescope')
ts.setup()
