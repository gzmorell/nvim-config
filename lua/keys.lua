--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local opts = { silent = true }

-- Remap space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t",
-- command_mode = ""

-- Normal --
-- Better window nagigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- remap the key used to leave insert mode
map('i', 'ññ', '<ESC><Right>', {})

-- Find Files
map('n', '<leader>ff', ":Telescope find_files<CR>", opts)
map('n', '<leader>fg', ":Telescope live_grep<CR>", opts)
map('n', '<leader>fp', ":Telescope projects<CR>", opts)
map('n', '<leader>fb', ":Telescope buffers<CR>", opts)

-- Nvim Tree
map('n', '<leader>tt', [[:NvimTreeToggle<CR>]], opts)

-- Float Terminal
map('n', '<leader>ft', ":FloatermNew --name=myfloat --heigth=0.8 --width=0.7 --autoclose=2 nu <CR> ", opts)
map('n', 't', ":FloatTermToggle myfloat<CR>", opts)
map('t', '<Esc>', '<C-\\><C-n>:q<CR>',opts)

-- Hop cursor
map('n', '<leader>hh', '[[:HopChar2<CR>]]', opts)
