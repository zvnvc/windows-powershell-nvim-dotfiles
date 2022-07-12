-- Settings (Numbers, spaces etc...)
vim.opt.number = true         -- Show numbers
vim.opt.relativenumber = true -- Relative numbers
vim.opt.hlsearch = true       -- Highlight search results
vim.opt.ignorecase = true     -- Search ignoring case
vim.opt.smartcase = true      -- Do not ignore case if the search patter has uppercase
vim.opt.splitright = true     -- New vert splits are on the right
vim.opt.splitbelow = true     -- New horizontal splits, like `:help`, are on the bottom window
vim.opt.tabstop = 2           -- Tab size of 2 spaces
vim.opt.softtabstop = 2       -- On insert use 2 spaces for tab
vim.opt.shiftwidth = 0        -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true      -- Use appropriate number of spaces
vim.opt.wrap = true           -- Enabled wrap
vim.opt.swapfile = false      -- Do not leave any backup files
vim.opt.mouse="i"             -- Enable mouse on insert mode
vim.opt.showmatch  = true     -- Highlights the matching parenthesis
vim.opt.termguicolors = true  -- Required for some themes
vim.opt.cursorline = true     -- Highlight the current cursor line
vim.opt.signcolumn = "yes"    -- Always show the signcolumn, otherwise it would shift the text
vim.opt.hidden = true         -- Allow multple buffers
vim.opt.completeopt = { "menu" , "menuone" , "noselect", "noinsert" } -- Let the user decide about the autocomplete
vim.opt.showmode = false      -- Remove the -- INSERT -- message at the bottom
vim.opt.updatetime = 750      -- I have a modern toaster. No need to wait that long
vim.opt.shortmess:append("c") -- Don't pass messages to |ins-completion-menu|.
vim.opt.encoding = "utf-8"    -- Just in case
vim.opt.cmdheight=2           -- Shows better messages
vim.cmd[[colorscheme NeoSolarized]] --Colorscheme
