--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'ññ', '<ESC>', {})

-- toggle plugins
map('n', 'ff', [[:Telescope find_files]], {})
