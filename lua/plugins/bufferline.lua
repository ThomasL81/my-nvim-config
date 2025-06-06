-- bufferline.lua
return {
  'akinsho/bufferline.nvim',
  version='*',
  dependencies= 'nvim-tree/nvim-web-devicons',
  config = function() 
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
  end
}
