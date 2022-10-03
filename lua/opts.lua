-- [[ opts.lua ]]
local opt = vim.opt
local cmd = vim.api.nvim_command
local api = vim.api

-- [[ Context ]]
opt.colorcolumn = '80'
opt.number = true
opt.relativenumber = false
opt.scrolloff = 4
opt.signcolumn = 'yes'

-- [[ Filetypes ]]
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

-- [[ Theme ]]
opt.syntax = 'ON'
opt.termguicolors = true
opt.cursorline = true
cmd('colorscheme onedark')

-- [[ Search ]]
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false

-- [[ Whitespace ]]
opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.tabstop = 2
opt.smartindent = true

-- [[ Splits ]]
opt.splitright = true
opt.splitbelow = true

opt.completeopt = {'menu', 'menuone', 'noselect'}

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

local M = {}

function M.nvim_create_augroups(definitions)
  for group_name, definition in pairs(definitions) do
    cmd('augroup '..group_name)
    cmd('autocmd!')
    for _, def in ipairs(definition) do
      local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
      cmd(command)
    end
    cmd('augroup END')
  end
end

local autoCommands = {
  -- other autocommands
  open_folds = {
    {"BufAdd,BufEnter,BufNew,BufNewFile,BufWinEnter,BufReadPost,FileReadPost", "*", "normal zR"}
  }
}
M.nvim_create_augroups(autoCommands)
