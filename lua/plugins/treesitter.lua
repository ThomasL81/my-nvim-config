-- bufferline.lua
return {
  'nvim-treesitter/nvim-treesitter',
  run = function()
    if vim.fn.exists(':TSUpdate') == 2 then
      vim.cmd(':TSUpdate')
    end
  end,
 -- run = ':TSUpdate',
  config = function()
    local ts = require('nvim-treesitter.configs')
    ts.setup{
      ensure_installed = { 'c', 'cpp', 'hlsl', 'odin', 'lua', 'vim', 'vimdoc', 'query', 'typescript', 'svelte' },
      highlight = { enable = true, },
      additional_vim_regex_highlighting  = false,
    }
  end
}
