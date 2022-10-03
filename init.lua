--[[ init.lua ]]

-- LEADER
vim.g.mapleader = ' '
vim.g.localleader = ' '

require('vars')
require('opts')
require('keys')
require('plug')

-- PLUGINS
require('lualine').setup {}

