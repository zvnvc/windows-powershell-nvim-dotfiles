# Windows (Setup)

---

1. **Delete OneDrive and all folders of OneDrive**
   
   - Select the **Start** button, search **Add or remove programs** > **OneDrive** > **Uninstall**.

2. **Check for Updates**
   
   - Select the **Start** button, search **Check for updates** > **Check for updates**.

3. **Create System Restore Point**
   
   - Select the **Start** button, sarch **Create a restore point** > **Windows C (or any other drive if you have)** > **Configure** > **Turn on system protection** > **Max Usage (2% is minimal you can go to 5%)** > **Ok** > **System Restore** > **Next** > **Select the newest restore point** > **Next** > **Finish**.

4. **Disable Windows privacy settings**
   
   - Select the **Start** button, open **Settings** > **Privacy & security** > **Find my device** > **Find my device (Off)** > Go back to Privacy & security > **Windows permissions (Turn off everything in all sections** > **App permissions (Turn off everything you dont need except Camera, Microphone etc...)**.

5. **Personalize**
   
   - Right click anywhere on your Desktop > **Personalize** > **Colors** > **Chose your mode (Dark)** > **Transparency effects (On)** > **Accemt color (Manual)** > **Custom colors** > **View colors (#073642) - "Dark teal"** > **Show accent color on title bars and windows borders (On)** > Go back to personalization > **Themes** > **Desktop icon settings** > **Select (Computer and Recycle bin other one's turn off)** > **Ok** > Go back to personalization > **Lock screen** > **Personalize your lock screen (Windows spotlight)** > **Lock screen status (Weather)** > **Show the lock screen background picture on the sign-in screen (On)** > Go back to personalization > **Start** > **Show recently added apps (Off)** > **Show most used apps (Off)** > **Show recently opened items in Start, Jump Lists, and File Explorer (Off)** > **Folders** > **Turn off everything except (Settings, Documents, Downloads and Personal folder)** > Go back to personalization > **Taskbar** > **Turn off everything** > **Taskbar corner overflow (Select whats icons you want to show in taskbar icon tray)** > **Taskbar behaviors** > **Taskbar alignment (Center)** > **Automatically hide the taskbar (On)** > **Show badges (unread messages counter) on taskbar apps (On)** > **Show my taskbar on all displays (On) -> When using multiple displays, show my taskbar apps on (Taskbar where window is open)** > **Share any windows from my taskbar (On)** > **Select the far corner of the taskbar to show the desktop (On)**.

6. **Turn on (Print screen button to open screen snipping)**
   
   - Select the **Start** button, search **Accessibility keyboard settings** > **Use the Print screen button to open screen snipping (On)**.

7. **Turn on (Item check boxes, File name extensions and Hidden items)**
   
   - Open **This PC** > **View** > **Show** > **Enable** > **Navigation pane, Item check boxes, File name extensions and Hidden items**.

8. **Download Google Chrome and set as your default web browser**
   
   **Install**
   - Open **Microsoft Edge** > Search **Google Chrome (google.com/chrome)** > Click on **Download Chrome** > Install.
  
  **Set as default web browser**

   - Select the **Start** button, search **Default apps** > Find **Google Chrome** > **Make Google Chrome your default browser (Set Default)**.
  
9. **Download apps with Ninite**

   - Open **Google Chrome** > Search **Ninite (ninite.com)** > Select apps you want **(Zoom, Discord, Python x64 3, Python, Notepad++, VLC, Spotify, .NET Desktop Runtime x64 6, 7-Zip, Google Drive for Desktop)**.
  
10. **Other apps**
    - **Visual Studio Code ( https://az764295.vo.msecnd.net/stable/30d9c6cd9483b2cc586687151bcbcd635f373630/VSCodeUserSetup-x64-1.68.1.exe )**
  
    - **MarkText ( github.com/marktext/marktext )**
  
    - **oCam ( https://raw.githubusercontent.com/ohsoft/archive/master/ocam/2021060901/oCam_v520.0.exe?ohsoft=best )**
  
    - **Min web browser ( minbrowser.org )**


# PowerShell (Setup)

---

1. **Install Patched Nerd Fonts**
   
   - Open **Google Chrome** > Search **Nerd Fonts (nerdfonts.com)** > **Fonts downloads** > **Hack Nerd Font** > Select the **Start** button, search **Fonts** > All files in Zip doc drop to **Fonts folder**.

2. **Download PowerShell**
   
   - Select the **Start** button, search **Microsoft Store** > In search bar enter **PowerShell** > **Click Get or Install**.
   
   ![alt text](https://github.com/zvnvc/windows-powershell-nvim-dotfiles/blob/master/images/powershell-download.png?raw=true)

3. **Change Default profile and terminal application**
   
   - Open **PowerShell** > **Settings (Ctrl +,)** > **Default profile (PowerShell)** > **Default terminal application (Windows Terminal)** > Go to **PowerShell (Appearance)** > **Color scheme (Solarized Dark)** > **Font face (Hack NF)** > **Font size (14)** > **Transparency** > **Background opacity (45-50)** > **Enable acrylic material (On)** > **Scrollbar visibility (Hidden)**.
   
   ![alt text](https://github.com/zvnvc/windows-powershell-nvim-dotfiles/blob/master/images/powershell-setup.png?raw=true)
   
   ![alt text](https://github.com/zvnvc/windows-powershell-nvim-dotfiles/blob/master/images/powershell-setup-1.png?raw=true)
   
   ![alt text](https://github.com/zvnvc/windows-powershell-nvim-dotfiles/blob/master/images/powershell-setup-2.png?raw=true)
   
   ![alt text](https://github.com/zvnvc/windows-powershell-nvim-dotfiles/blob/master/images/powershell-setup-3.png?raw=true)

4. **Install Scoop**
   
   - Open **PowerShell** > and enter > 
     
     ```powershell
     iwr -useb get.scoop.sh | iex
     ```
   
   - After installation >
     
     ```powershell
     scoop install curl sudo jq
     ```

5. **Install Git**
   
   - Open **PowerShell** > and enter >
     
     ```powershell
     winget install -e --id Git.Git
     ```

6. **Install Neovim**
   
   - Open **PowerShell** > and enter >
     
     ```powershell
     scoop install neovim gcc
     ```

7. **Make a user profile (PowerShell Profile)**
   
   - Open **This Pc** > **Windows (C:)** > **Users** > **Your name** > **Documents** > Right click **(New > Folder)** > Name it **PowerShell** > Open it > Right click **(New > Text Document)** > Name it > **Microsoft.PowerShell_profile.ps1**

8. **Set command aliases**
   
   - Open **PowerShell** > Type >
     
     ```powershell
     nvim $PROFILE
     ```
     
     ```powershell
     # Alias
     Set-Alias v nvim
     Set-Alias ll ls
     Set-Alias g git
     Set-Alias grep findstr
     Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
     Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
     ```

9. **Install Posh-git and Oh My Posh**
   
   - Open **PowerShell** > and enter >
     
     ```powershell
     PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
     ```
     
     ```powershell
     winget install oh-my-posh
     ```
     
     ```powershell
     nvim $PROFILE
     ```
     
     ```powershell
     Import-Module posh-git
     oh-my-posh init pwsh --config C:\Users\Slobodan\AppData\Local\Programs\oh-my-posh\themes\paradox.omp.json | Invoke-Expression
     ```

10. **Install Terminal Icons**
    
    - Open **PowerShell** > and enter >
      
      ```powershell
      Install-Module -Name Terminal-Icons -Repository PSGallery
      ```
      
      ```powershell
      nvim $PROFILE
      ```
      
      ```powershell
      Import-Module -Name Terminal-Icons
      ```

11. **Install NodeJS**
    
    - Open **PowerShell** > and enter >
      
      ```powershell
      scoop install nvm
      ```
    
    - Open new **PowerShell** as **Administrator** > and type >
      
      ```powershell
      nvm install 14.16.0
      ```
      
      ```powershell
      nvm use 14.16.0
      ```

12. **Install z - Directory jumper**
    
    - Open **PowerShell** > and enter >
      
      ```powershell
      Install-Module -Name z -Force
      ```

13. **Install PSReadLine**
    
    - Open **PowerShell** > and enter >
      
      ```powershell
      Install-Module PSReadLine -AllowPrerelease -Force
      ```
      
      ```powershell
      nvim $PROFILE
      ```
      
      ```powershell
      Import-Module PSReadLine
      
      Set-PSReadLineOption -PredictionSource History
      Set-PSReadLineOption -PredictionViewStyle ListView
      Set-PSReadLineOption -EditMode Windows
      ```

14. **Install Fzf - Fuzzy finder**
    
    - Open **PowerShell** > and enter >
      
      ```powershell
      scoop install fzf
      ```
      
      ```powershell
      Install-Module -Name PSFzf -Scope CurrentUser -Force
      ```
      
      ```powershell
      nvim $PROFILE
      ```
      
      ```powershell
      Import-Module PSFzf
      
      Set-PsFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHistory 'Ctrl+r'
      ```
    
    ![alt text](https://github.com/zvnvc/windows-powershell-nvim-dotfiles/blob/master/images/powershell-setup-4.png?raw=true)
    
    ![alt text](https://github.com/zvnvc/windows-powershell-nvim-dotfiles/blob/master/images/powershell-setup-5.png?raw=true)

# Neovim (Setup)

---

I use lua config and most plugins are made in lua. Below is a list of plugins that I currently use, in the meantime if I insert something I will add it to the list. Of course if you looked at the whole blog so far thank you very much.

- Packer

- Autopairs

- Dev-Icons

- NeoSolarized

- Lualine

- Treesitter

- LSP (with other plugins cmp, snippets)

- Telescope

- Tree

- CSS Colors

![alt text](https://github.com/zvnvc/windows-powershell-nvim-dotfiles/blob/master/images/nvim.png?raw=true)

![alt text](https://github.com/zvnvc/windows-powershell-nvim-dotfiles/blob/master/images/nvim1.png?raw=true)

![alt text](https://github.com/zvnvc/windows-powershell-nvim-dotfiles/blob/master/images/nvim2.png?raw=true)

![alt text](https://github.com/zvnvc/windows-powershell-nvim-dotfiles/blob/master/images/nvim3.png?raw=true)

1. **Configuration structure and file naming**
   
   First of all we need to create init.lua also as other lua files.
   
   - Open **PowerShell** and type > 
     
     ```powershell
     cd AppData/Local
     ```
     
     ```powershell
     mkdir nvim   
     ```
     
     ```powershell
     cd nvim
     ```
     
     ```powershell
     mkdir lua
     ```
     
     ```powershell
     cd lua
     ```
     
     ```powershell
     New-Item init.lua
     ```
     
     ```powershell
     New-Item options.lua
     ```
     
     ```powershell
     New-Item plugins.lua
     ```
     
     ```powershell
     New-Item mappings.lua
     ```
     
     ```powershell
     cd..
     ```
     
     ```powershell
     New-Item init.vim
     ```

2. **Connect init.lua with other lua files and init.vim**
   
   Next we need to connect lua files with Vim.
   
   - Open **PowerShell** and type >
     
     ```powershell
     cd AppData/Local/nvim
     ```
     
     ```powershell
     nvim init.vim
     ```
     
     ```vim
     lua << EOF
     require('init')
     EOF
     ```
     
     ```powershell
     cd lua
     ```
     
     ```powershell
     nvim init.lua
     ```
     
     ```lua
     -- Options
     require('options')
     -- Plugins
     require('plugins')
     -- Mappings
     require('mappings')
     ```

3. **First set of configuration options**
   
   Lets start with the basics, all commands bellow have comments what they do.
   
   - Open **PowerShell** and type >
     
     ```powershell
     cd AppData/Local/nvim/lua
     ```
     
     ```powershell
     nvim options.lua
     ```
     
     ```lua
     -- Settings
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
     ```

4. **Plugin Manager**
   
   Now the good stuff... Plugins!!! First of all we need some Plugin Manager. I prefer using Packer Plugin Manager.
   
   - Open **PowerShell** and type >
     
     ```powershell
     git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
     ```
     
     ```powershell
     cd AppData/Local/nvim/lua
     ```
     
     ```powershell
     nvim plugins.lua
     ```
     
     ```lua
     require('packer').startup(function(use)
     use 'wbthomason/packer.nvim'
     end)
     ```

5. **Colorscheme (NeoSolarized)**
   
   For colorscheme I love NeoSolarized.
   
   - Open **PowerShell** and type >
     
     ```powershell
     cd AppData/Local/nvim/lua
     ```
     
     ```powershell
     nvim plugins.lua
     ```
     
     ```lua
     use {
         'overcache/NeoSolarized' -- Colorscheme
     }
     ```
   
   After you enter command above save file and run **PackerSync** > After installation finish close **Nvim**
   
   Go to **C:\Users\YourName\AppData\Local\nvim-data\site\pack\packer\start\NeoSolarized\colors** and paste the file I posted in the folder **colors** (**NeoSolarized.vim**)
   
   Now we need to add some setup to **options.lua**
   
   - Open **PowerShell** and type >
     
     ```powershell
     cd AppData/Local/nvim/lua
     ```
     
     ```powershell
     nvim options.lua
     ```
     
     ```lua
     vim.cmd[[colorscheme NeoSolarized]] --Colorscheme
     ```

6. **Language Server Protocol (LSP) and auto completion**
   
   - Open **PowerShell** and type >
     
     ```powershell
     cd AppData/Local/nvim/lua
     ```
     
     ```powershell
     nvim plugins.lua
     ```
     
     ```lua
     use {
         'VonHeikemen/lsp-zero.nvim', -- LSP
         requires = {
           {'neovim/nvim-lspconfig'},
           {'williamboman/nvim-lsp-installer'},
     
           {'hrsh7th/nvim-cmp'},
           {'hrsh7th/cmp-buffer'},
           {'hrsh7th/cmp-path'},
           {'saadparwaiz1/cmp_luasnip'},
           {'hrsh7th/cmp-nvim-lsp'},
           {'hrsh7th/cmp-nvim-lua'},
     
           {'L3MON4D3/LuaSnip'},
           {'rafamadriz/friendly-snippets'},
                 config = function()
                     require("config.cmp") -- Destination of Cmp config
                  end,
         }}
     ```
   
   Save file and close **Nvim**.
   
   - Type in **PowerShell** (if you are in lua folder)
     
     ```powershell
     mkdir config
     ```
     
     ```powershell
     cd config
     ```
   
   Go to **C:\Users\Slobodan\AppData\Local\nvim\lua\config** and paste the file I posted in the folder **config (cmp.lua)**
   
   - Now open **Nvim** in **PowerShell** and run **PackerSync**
   
   Now we need to add some setup to **init.lua**
   
   - Open **PowerShell** and type >
     
     ```powershell
     cd AppData/Local/nvim/lua
     ```
     
     ```powershell
     nvim init.lua
     ```
     
     ```lua
     -- Lsp setup
     local lsp = require('lsp-zero')
     lsp.preset('recommended')
     lsp.nvim_workspace()
     lsp.setup()
     ```
   
   Now save it and close **Nvim**.
   
   - Type in **PowerShell** >
     
     ```powershell
     nvim edit ~/AppData/nvim/lua/init.lua
     ```
   
   - Press **Y** and **1**
   
   - For installing other languages you need to type in **Nvim** >
     
     ```vim
     LspInstallInfo
     ```
   
   Point on lang you want and press **i**

7. **Nvim Treesitter**
   
   For installing **Nvim Treesitter** we need **Chocolatey package manager** bcs of **MinGW**.
   
   - Open **PowerShell** as **Administrator** and type >
     
     ```powershell
     @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
     ```
   
   - After installation finish close **PowerShell** and open again and type >
     
     ```powershell
     choco install mingw
     ```
   
   Now we need to add some setup to **plugins.lua** first
   
   - Open **PowerShell** and type >
     
     ```powershell
     cd AppData/Local/nvim/lua
     ```
     
     ```powershell
     nvim plugins.lua
     ```
     
     ```lua
       use {
         'nvim-treesitter/nvim-treesitter' -- Better highlighting
       }
     ```
   
   Save it and run **PackerSync**
   
   - Now close **Nvim** and type in **PowerShell** >
     
     ```powershell
     nvim init.lua
     ```
     
     ```lua
     -- Treesitter setup
     require'nvim-treesitter.configs'.setup {
       highlight = {
         enable = true, -- Enables highlights
         additional_vim_regex_highlighting = true -- Additional highlighting (Can be bad)
       },
     }
     ```
   
   Save it and close **Nvim**.

8. **Telescope**
   
   - Open **PowerShell** and type >
     
     ```powershell
     cd AppData/Local/nvim/lua
     ```
     
     ```powershell
     nvim plugins.lua
     ```
     
     ```lua
       use {
         'nvim-telescope/telescope.nvim', -- File explorer (Telescope)
         requires = { {'nvim-lua/plenary.nvim'} }
       }
     ```
   
   Save it and run **PackerSync**
   
   - Now close **Nvim** and type in **PowerShell** >
     
     ```powershell
     nvim init.lua
     ```
     
     ```lua
     -- Telescope setup
     require('telescope').setup()
     ```

9. **Nvim Tree**
   
   - Open **PowerShell** and type >
     
     ```powershell
     cd AppData/Local/nvim/lua
     ```
     
     ```powershell
     nvim plugins.lua
     ```
     
     ```lua
       use {
         'kyazdani42/nvim-tree.lua' -- File explorer (Tree)
       }
     ```
   
   Save it and run **PackerSync**
   
   - Now close **Nvim** and type in **PowerShell** > 
     
     ```powershell
     nvim init.lua
     ```
     
     ```lua
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
     ```

10. **Lualine**
    
    - Open **PowerShell** and type >
      
      ```powershell
      cd AppData/Local/nvim/lua
      ```
      
      ```powershell
      nvim plugins.lua
      ```
      
      ```lua
        use {
          'nvim-lualine/lualine.nvim', -- Better status line (with devicons)
          requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }
      ```
    
    Save it and run **PackerSync**
    
    - Now close **Nvim** and type in **PowerShell** >
      
      ```powershell
      nvim init.lua
      ```
      
      ```lua
      -- Lualine setup
      require('lualine').setup()
      ```

11. **Autopairs**
    
    - Open **PowerShell** and type >
      
      ```powershell
      cd AppData/Local/nvim/lua
      ```
      
      ```powershell
      nvim plugins.lua
      ```
      
      ```lua
        use {
          "windwp/nvim-autopairs", -- Autopairs
            config = function() require("nvim-autopairs").setup {} end
        }
      ```
    
    Save it and run **PackerSync**

12. **Dev-Icons**
    
    - Open **PowerShell** and type >
      
      ```powershell
      cd AppData/Local/nvim/lua
      ```
      
      ```powershell
      nvim plugins.lua
      ```
      
      ```lua
        use {
          'ryanoasis/vim-devicons' -- Another devicons
        }
      ```
    
    Save it and run **PackerSync**

13. CSS Colors
    
    - Open **PowerShell** and type >
      
      ```powershell
      cd AppData/Local/nvim/lua
      ```
      
      ```powershell
      nvim plugins.lua
      ```
      
      ```lua
        use {
          'ap/vim-css-color' -- Show colors in files (CSS, JS...)
        }
      ```
    
    Save it and run **PackerSync**

14. **Final thoughts**
    
    - Now your **init.lua** and **plugins.lua** files should look something like this.
      
      ```lua
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
      ```
      
      ```lua
      require('packer').startup(function(use)
          use 'wbthomason/packer.nvim' -- Packer (Plugin manager)
        use {
          "windwp/nvim-autopairs", -- Autopairs
            config = function() require("nvim-autopairs").setup {} end
        }
        use {
          'ryanoasis/vim-devicons' -- Another devicons
        }
        use {
          'nvim-lualine/lualine.nvim', -- Better status line (with devicons)
          requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }
        use {
          'nvim-treesitter/nvim-treesitter' -- Better highlighting
        }
        use {
          'overcache/NeoSolarized' -- Colorscheme
        }
        use {
          'folke/tokyonight.nvim' --Colorscheme 
        }
        use {
          'VonHeikemen/lsp-zero.nvim', -- LSP
          requires = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/nvim-lsp-installer'},
      
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
      
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
                  config = function()
                      require("config.cmp") -- Destination of Cmp config
                   end,
          }}
        use {
          'nvim-telescope/telescope.nvim', -- File explorer (Telescope)
          requires = { {'nvim-lua/plenary.nvim'} }
        }
        use {
          'kyazdani42/nvim-tree.lua' -- File explorer (Tree)
        }
        use {
          'ap/vim-css-color' -- Show colors in files (CSS, JS...)
        }
      end)
      ```

      ```

15. **Keymaps**
    
    And the last thing we need to do is to add mappings.
    
    - Open **PowerShell** and type >
      
      ```powershell
      cd AppData/Local/nvim/lua
      ```
      
      ```powershell
      nvim mappings.lua
      ```
      
      ```lua
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
      ```

That's it for now.  If you want to thanks me consider to <a href="https://www.buymeacoffee.com/boda" target="_blank">Buy Me a Coffee</a>. Thanks for reading and see you soon!
