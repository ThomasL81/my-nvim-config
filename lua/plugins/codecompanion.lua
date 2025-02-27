-- scoop install main/curl

-- codecompanion.lua
return {
  'olimorris/codecompanion.nvim',
  requires = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    local cc = require('codecompanion')
    cc.setup({
        strategies = {
            chat = {
                adapter = "ollama",
            },
            inline = {
                adapter = "ollama",
            },
        },
    })
end
:
