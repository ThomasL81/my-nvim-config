-- telescope.lua
vim.pack.add({
    { src = 'https://github.com/nvim-lua/plenary.nvim.git', version = 'master' },
    { src = 'https://github.com/nvim-telescope/telescope.nvim.git', version = 'master' },
}, { confirm = false })

local ok, builtin = pcall(function() return require('telescope.builtin') end)
if ok then
  local alias=vim.keymap
  local normal_mode='n'
  alias.set('n', '<leader>ff', builtin.find_files,           { desc = 'Telescope find files' })
  alias.set('n', '<leader>fb', builtin.buffers,              { desc = 'Telescope buffers' })
  alias.set('n', '<leader>fg', builtin.git_files,            { desc = 'Telescope git files' })
  alias.set('n', '<leader>fh', builtin.help_tags,            { desc = 'Telescope help tags' })
  alias.set('n', '<leader>fw', builtin.lsp_workspace_symbols,{ desc = 'Telescope LSP workspace' })
  alias.set('n', '<leader>fs', builtin.live_grep,            { desc = 'Telescope live grep' })
end
