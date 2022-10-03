local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	is_bootstrap = true
	vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
	vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  if is_bootstrap then
        require('packer').sync()
  end
  -- [[ Theme ]]
  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
	use {
		'nvim-lualine/lualine.nvim',                     -- statusline
  	requires = {'kyazdani42/nvim-web-devicons',
               opt = true}

  } 
  -- [[ Dev ]]
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
