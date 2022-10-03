--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'ee', '<ESC>', {})

-- toggle plugins
map('n', 'ff', [[:Telescope find_files]], {})
