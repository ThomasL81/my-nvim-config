local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use(require('plugins.theme'))
  use(require('plugins.bufferline'))
  use(require('plugins.lualine'))
  use(require('plugins.undotree'))
  use(require('plugins.treesitter'))
  use(require('plugins.telescope'))
  use(require('plugins.cmp'))
  use(require('plugins.lsp_config'))
  use(require('plugins.codecompanion'))

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

