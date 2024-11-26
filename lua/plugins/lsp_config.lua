-- lsp_config.lua
return {
  'neovim/nvim-lspconfig',
  config = function() 
    local lsp = require 'lspconfig'

    require('plugins.lsp_sap_cds').setup()
--    lsp.sap_cds = require('plugins.lsp_sap_cds')
--    lsp.sap_cds.setup()

    lsp.clangd.setup{ cmd = { 'clangd', '-header-insertion=never'}, }
    lsp.ols.setup{}
    lsp.eslint.setup{}
    lsp.ts_ls.setup{}

    -- lsp_config.svelte.setup{}
    -- lsp_config.zls.setup{}

    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
	-- Enable completion triggered by <c-x><c-o>
	vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

	vim.api.nvim_create_autocmd('CursorHold', {
	  buffer = ev.buf,
	  callback = function()
	    local opts = {
	      focusable = false,
	      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
	      border = 'rounded',
	      source = 'always',
	      prefix = ' ',
	      scope = 'cursor',
	    }
	    vim.diagnostic.open_float(nil, opts)
	  end
	})

	-- Buffer local mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local opts = { buffer = ev.buf }
	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
	vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
	vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
	vim.keymap.set('n', '<Leader>wa', vim.lsp.buf.add_workspace_folder, opts)
	vim.keymap.set('n', '<Leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
	vim.keymap.set('n', '<Leader>wl', function()
	  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, opts)
	vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
	vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, opts)
	--    vim.keymap.set({ 'n', 'v' }, '<Leader>ca', vim.lsp.buf.code_action, opts)
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
      end,
    })
  end
}
