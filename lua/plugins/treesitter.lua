-- bufferline.lua
return {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  config = function() 
    local ts = require('nvim-treesitter.configs')
    ts.setup{
      ensure_installed = { 'c', 'cpp', 'hlsl', 'odin', 'lua', 'vim', 'vimdoc', 'query', 'typescript', },
      highlight = { enable = true, },
      additional_vim_regex_highlighting  = false,
    }
  end
}
