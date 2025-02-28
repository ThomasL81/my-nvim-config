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
        adapters = {
            ollama = function()
                return require('codecompanion.adapters').extend('ollama', {
                    schema = {
                        model = {
                            default = "deepseek-coder:33b"
                        }
                    }
                })
            end,
        },
    })
end
}
