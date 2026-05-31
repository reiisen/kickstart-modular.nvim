-- Foot Terminal Palette (Base16)
local base00 = '#1d2021' -- Black (Background)
local base01 = '#383c3e' -- Dark Lighter
local base02 = '#53585b' -- Dark Selection
local base03 = '#6f7579' -- Bright Black (Comments)
local base04 = '#cdcdcd' -- Dark Foreground
local base05 = '#d5d5d5' -- White (Main Foreground)
local base06 = '#dddddd' -- Light Foreground
local base07 = '#e5e5e5' -- Bright White
local base08 = '#d72638' -- Red
local base09 = '#eb8413' -- Orange
local base0A = '#f19d1a' -- Yellow
local base0B = '#88b92d' -- Green
local base0C = '#1ba595' -- Cyan
local base0D = '#1e8bac' -- Blue
local base0E = '#be4264' -- Magenta
local base0F = '#c85e0d' -- Brown

vim.cmd 'TransparentEnable'

-- UI Elements
vim.cmd.hi('StatusLine guifg=' .. base04 .. ' guibg=' .. base01)
vim.cmd.hi('LineNr guifg=' .. base03)
vim.cmd.hi('CursorLineNr guifg=' .. base0A .. ' gui=bold') -- Yellow pop for current line
vim.cmd.hi('VertSplit guifg=' .. base03 .. ' guibg=NONE')

-- Main Text Body
vim.cmd.hi('Normal guifg=' .. base05)

-- Comments -> Bright Black
vim.cmd.hi('Comment guifg=' .. base03 .. ' gui=italic')

-- Details (Numbers, Booleans, Constants) -> Orange
vim.cmd.hi('Constant guifg=' .. base09)
vim.cmd.hi('Number guifg=' .. base09)
vim.cmd.hi('Boolean guifg=' .. base09)
vim.cmd.hi('Float guifg=' .. base09)
vim.cmd.hi('Character guifg=' .. base0B)

-- Strings -> Green
vim.cmd.hi('String guifg=' .. base0B)

-- Imports & Preprocessor -> Cyan
vim.cmd.hi('Include guifg=' .. base0C)
vim.cmd.hi('PreProc guifg=' .. base0C)
vim.cmd.hi('Define guifg=' .. base0C)
vim.cmd.hi('Macro guifg=' .. base0C)

-- Identifiers & Functions -> Red & Blue
vim.cmd.hi('Identifier guifg=' .. base08)
vim.cmd.hi('Function guifg=' .. base0D)

-- Statements & Keywords -> Magenta
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
