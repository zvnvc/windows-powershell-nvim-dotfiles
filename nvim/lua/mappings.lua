-- Keymaps
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<C-n>', ':NvimTreeToggle<CR>')
map('n', '<C-t>', ':Telescope find_files<CR>')

-- Move around splits using Ctrl + {h,l,j,k}
map('n', '<C-h>', '<C-w>h') -- Left
map('n', '<C-l>', '<C-w>l') -- Right
map('n', '<C-j>', '<C-w>j') -- Up
map('n', '<C-k>', '<C-w>k') -- Down