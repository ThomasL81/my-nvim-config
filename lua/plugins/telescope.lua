-- bufferline.lua
return {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.8',
  requires = { {'nvim-lua/plenary.nvim'} },
  config = function() 
    local ts = require('telescope')
    ts.setup()
  end
}
