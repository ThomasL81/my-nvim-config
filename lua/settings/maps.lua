local alias=vim.keymap
local normal_mode='n'
local visual_select_mode='v'
local visual_mode='x'

alias.set(normal_mode, "j", "jzz")
alias.set(normal_mode, "k", "kzz")
alias.set(normal_mode, "G", "Gzz")
alias.set(normal_mode, "<leader>pv", "<cmd>Explore<cr>") --function() vim.cmd([[Explore]]) end)
alias.set(visual_select_mode, "J", ":m '>+1<CR>gv=gv") 
alias.set(visual_select_mode, "K", ":m '<-2<CR>gv=gv") 
alias.set(visual_mode, "<leader>p", "\"_dP") 

local silence_plugin_maps=false

-- bufferline
alias.set(normal_mode, "<c-[>", '<cmd>BufferLineCyclePrev<cr>', { silent = silence_plugin_maps })
alias.set(normal_mode, "<c-]>", '<cmd>BufferLineCycleNext<cr>', { silent = silence_plugin_maps }) 
alias.set(normal_mode, "<c-e>", '<cmd>bdelete<cr>', { silent = truesilence_plugin_maps }) 

-- undotree
alias.set(normal_mode, '<leader><F5>', '<cmd>UndotreeToggle<cr>', { silent = truesilence_plugin_maps })

-- telescope
local telescope_ok, builtin = pcall(require, 'telescope.builtin')
if telescope_ok then
  alias.set(normal_mode, '<leader>ff', builtin.find_files, {})
  alias.set(normal_mode, '<leader>fb', builtin.buffers, {})
  alias.set(normal_mode, '<leader>fg', builtin.git_files, {})
  alias.set(normal_mode, '<leader>fh', builtin.help_tags, {})
  alias.set(normal_mode, '<leader>fw', builtin.lsp_workspace_symbols, {}) --builtin.lsp_dynamic_workspace_symbols, {})
  alias.set(normal_mode, '<leader>fs', builtin.live_grep, {})
end

alias.set(normal_mode, '<leader>e', vim.diagnostic.open_float)
alias.set(normal_mode, '<leader>dp', vim.diagnostic.goto_prev)
alias.set(normal_mode, '<leader>dn', vim.diagnostic.goto_next)
alias.set(normal_mode, '<leader>dl', "<cmd>Telescope diagnostics<cr>")
alias.set(normal_mode, '<leader>q', vim.diagnostic.setloclist)
