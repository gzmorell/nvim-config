-- [[ vars.lua ]]

local g = vim.g
g.t_co = 256
g.background = 'dark'

local packer_path = vim.fn.stdpath('data') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
