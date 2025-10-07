vim.pack.add({
    { src = 'https://github.com/nvim-tree/nvim-web-devicons.git', version = 'master' },
    { src = 'https://github.com/akinsho/bufferline.nvim.git', version = 'master' },
})

local bl = require('bufferline')
bl.setup{
    options = {
        diagnostics = false,
        color_icons = false,
        show_buffer_icons=false,
        show_buffer_close_icons=false,
        show_close_icon=false,
        numbers = function(opts)
            return string.format('%s', opts.ordinal) -- opts.id
        end
    }
}
