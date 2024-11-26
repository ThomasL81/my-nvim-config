-- lualine.lua
return {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  config = function() 
    require('lualine').setup{
      options = { theme = 'ayu_dark' }
    }
  end
}
