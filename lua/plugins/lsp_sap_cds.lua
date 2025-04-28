-- lsp_sap_cds.lua
return {
  setup = function()
    local lspconfig = require 'lspconfig'
    local configs = require 'lspconfig.configs'
    local util = require 'lspconfig.util'

    if not configs.sap_cds then
      configs.sap_cds = {
	default_config = {
	  cmd = { 'npx', 'cds-lsp', '--stdio' },
	  filetypes = { 'cds' },
	  root_dir = lspconfig.util.root_pattern('.git', 'package.json'),
	  single_file_support = true,
	  settings = { validate = true }
	}
      }
    end

    lspconfig.sap_cds.setup{}

    vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
      pattern = { '*.cds' },
      desc = "cds-typer: generate types to #cds-models",
      callback = function()
	local file_name = vim.api.nvim_buf_get_name(0)
	vim.cmd('! npx @cap-js/cds-typer '.. file_name .. ' --outputDirectory @cds-models --logLevel ERROR')
      end,
    })

    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
      pattern = { '*.cds' },
      command = 'set filetype=cds'
    })

  end
}

