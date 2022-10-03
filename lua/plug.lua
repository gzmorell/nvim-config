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
  use {'phaazon/hop.nvim'}
  use {'kyazdani42/nvim-web-devicons'}
	use {
		'nvim-lualine/lualine.nvim',                     -- statusline
  	requires = {'kyazdani42/nvim-web-devicons',
               opt = true}

  } 
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons',
    opt = true }
  }
  use { 'windwp/nvim-autopairs' }
  use { 'numToStr/Comment.nvim' }
  use { 'navarasu/onedark.nvim' }
  use { 'voldikss/vim-floaterm' }
  -- [[ Dev ]]
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'neovim/nvim-lspconfig'
  use 'simrat39/rust-tools.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use 'mfussenegger/nvim-dap'

end)
