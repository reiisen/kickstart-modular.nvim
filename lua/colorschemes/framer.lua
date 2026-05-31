-- Updated Terminal Palette (Base16)
local base00 = '#181818'
local base01 = '#151515'
local base02 = '#464646'
local base03 = '#747474'
local base04 = '#b9b9b9'
local base05 = '#d0d0d0'
local base06 = '#e8e8e8'
local base07 = '#eeeeee'
local base08 = '#fd886b' -- Coral/Orange
local base09 = '#fc4769' -- Pink/Red
local base0A = '#fecb6e' -- Yellow
local base0B = '#32ccdc' -- Turquoise
local base0C = '#acddfd' -- Light Blue
local base0D = '#20bcfc' -- Blue
local base0E = '#ba8cfc' -- Purple
local base0F = '#b15f4a' -- Brown

vim.cmd 'TransparentEnable'

-- UI Elements
vim.cmd.hi('StatusLine guifg=' .. base04 .. ' guibg=' .. base01)
vim.cmd.hi('LineNr guifg=' .. base03)
vim.cmd.hi('CursorLineNr guifg=' .. base0A .. ' gui=bold') -- Yellow pop for current line
vim.cmd.hi('VertSplit guifg=' .. base03 .. ' guibg=NONE')

-- Main Text Body
vim.cmd.hi('Normal guifg=' .. base05)

-- Comments -> Gray
vim.cmd.hi('Comment guifg=' .. base03 .. ' gui=italic')

-- Details (Numbers, Booleans, Constants) -> Pink/Red
vim.cmd.hi('Constant guifg=' .. base09)
vim.cmd.hi('Number guifg=' .. base09)
vim.cmd.hi('Boolean guifg=' .. base09)
vim.cmd.hi('Float guifg=' .. base09)
vim.cmd.hi('Character guifg=' .. base0B)

-- Strings -> Turquoise
vim.cmd.hi('String guifg=' .. base0B)

-- Imports & Preprocessor -> Light Blue
vim.cmd.hi('Include guifg=' .. base0C)
vim.cmd.hi('PreProc guifg=' .. base0C)
vim.cmd.hi('Define guifg=' .. base0C)
vim.cmd.hi('Macro guifg=' .. base0C)

-- Identifiers & Functions -> Coral & Blue
vim.cmd.hi('Identifier guifg=' .. base08)
vim.cmd.hi('Function guifg=' .. base0D)

-- Statements & Keywords -> Purple
vim.cmd.hi('Statement guifg=' .. base0E)
vim.cmd.hi('Conditional guifg=' .. base0E)
vim.cmd.hi('Repeat guifg=' .. base0E)
vim.cmd.hi('Label guifg=' .. base0E)
vim.cmd.hi('Operator guifg=' .. base05)
vim.cmd.hi('Keyword guifg=' .. base0E)
vim.cmd.hi('Exception guifg=' .. base08)

-- Types & Structures -> Yellow
vim.cmd.hi('Type guifg=' .. base0A)
vim.cmd.hi('StorageClass guifg=' .. base0A)
vim.cmd.hi('Structure guifg=' .. base0A)
vim.cmd.hi('Typedef guifg=' .. base0A)

-- Special chars & Diagnostics
vim.cmd.hi('Special guifg=' .. base0C)
vim.cmd.hi('SpecialComment guifg=' .. base03)
vim.cmd.hi('Todo guifg=' .. base0A .. ' guibg=NONE gui=bold')

vim.cmd.hi('Error guifg=' .. base08)
vim.cmd.hi('Underlined guifg=' .. base0D .. ' gui=underline')
vim.cmd.hi('Title guifg=' .. base0D .. ' gui=bold')
vim.cmd.hi('Directory guifg=' .. base0D)
