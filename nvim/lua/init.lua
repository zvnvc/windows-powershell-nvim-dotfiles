-- Plugins
require('plugins')
-- Options
require('options')
-- Mappings
require('mappings')
-- Lualine setup
require('lualine').setup()
-- Telescope setup
require('telescope').setup()
-- Treesitter setup
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true, -- Enables highlights
    additional_vim_regex_highlighting = true -- Additional highlighting (Can be bad)
  },
}
-- Tree setup
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = false, -- Set this to true if you want bigger tree
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- Lsp setup
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()
