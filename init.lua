--[[ init.lua ]]

-- LEADER
--vim.g.mapleader = ''
-- vim.g.localleader = '\\'

require('vars')
require('plug')
require('opts')
require('keys')

-- PLUGINS
require('nvim-web-devicons').setup {}
require('lualine').setup {
  options = {
    theme = 'onedark'
  }
}
require('nvim-autopairs').setup{}
require('Comment').setup{}
require('hop').setup{}
require('nvim-tree').setup{}

require('nvim-treesitter.configs').setup {
  ensure_installed = {'lua', 'rust', 'toml'},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}

require('lsp_config')
require('cmp_config')
--require('rust-tools')

