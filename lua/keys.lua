--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'ññ', '<ESC><Right>', {})

-- Find Files
map('n', '<leader>ff', [[:Telescope find_files <CR> ]], {})

-- Nvim Tree
map('n', '<leader>tt', [[:NvimTreeToggle<CR>]], {})

-- Float Terminal
map('n', '<leader>ft', ":FloatermNew --name=myfloat --heigth=0.8 --width=0.7 --autoclose=2 nu <CR> ", {})
map('n', 't', ":FloatTermToggle myfloat<CR>", {})
map('t', '<Esc>', '<C-\\><C-n>:q<CR>',{})

-- Hop cursor
map('n', '<leader>hh', '[[:HopChar2<CR>]]', {})
