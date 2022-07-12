# Alias
Set-Alias v nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Git integration
Import-Module posh-git

# Oh My Posh
oh-my-posh init pwsh --config C:\Users\Slobodan\AppData\Local\Programs\oh-my-posh\themes\paradox.omp.json | Invoke-Expression

# Terminal Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# PowerShell Fuzzy finder
Import-Module PSFzf
Set-PsFzfOption -PSReadLineChordProvider 'Ctrl+g' -PSReadLineChordReverseHistory 'Ctrl+j'
