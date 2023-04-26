local bufferline = require("bufferline")
bufferline.setup{
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

vim.keymap.set("n", "<c-[>", function() vim.cmd([[BufferLineCyclePrev]]) end)
vim.keymap.set("n", "<c-]>", function() vim.cmd([[BufferLineCycleNext]]) end) 

vim.keymap.set("n", "<c-w>", function() vim.cmd([[bdelete]]) end) 

vim.keymap.set("n", "<c-f1>", function() vim.cmd([[BufferLineGoToBuffer 1]]) end) 
vim.keymap.set("n", "<c-f2>", function() vim.cmd([[BufferLineGoToBuffer 2]]) end) 
vim.keymap.set("n", "<c-f3>", function() vim.cmd([[BufferLineGoToBuffer 3]]) end) 
vim.keymap.set("n", "<c-f4>", function() vim.cmd([[BufferLineGoToBuffer 4]]) end) 
vim.keymap.set("n", "<c-f5>", function() vim.cmd([[bufferlinegotobuffer 5]]) end) 
vim.keymap.set("n", "<c-f6>", function() vim.cmd([[BufferLineGoToBuffer 6]]) end) 
vim.keymap.set("n", "<c-f7>", function() vim.cmd([[BufferLineGoToBuffer 7]]) end) 
vim.keymap.set("n", "<c-f8>", function() vim.cmd([[BufferLineGoToBuffer 8]]) end) 


