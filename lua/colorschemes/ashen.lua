local ash = '#C5C5C5'
local shadow = '#5A5A5A'
local iron = '#808080'
local bone = '#E0E0E0'

local ember = '#FFAF5F'
local blood = '#A06060'
local soul = '#9CAEC4'
local hollow = '#B0B0B0'

local error_red = '#803030'

vim.cmd 'TransparentEnable'

vim.cmd.hi('StatusLine guifg=' .. ash)
vim.cmd.hi('LineNr guifg=' .. iron)
vim.cmd.hi('CursorLineNr guifg=' .. ember .. ' gui=bold')

vim.cmd.hi('Normal guifg=' .. ash)

vim.cmd.hi('Comment guifg=' .. shadow .. ' gui=italic')

vim.cmd.hi('Constant guifg=' .. ember)
vim.cmd.hi('Number guifg=' .. ember)
vim.cmd.hi('Boolean guifg=' .. ember)
vim.cmd.hi('Float guifg=' .. ember)
vim.cmd.hi('Character guifg=' .. ember)

vim.cmd.hi('String guifg=' .. blood)

vim.cmd.hi('Identifier guifg=' .. hollow)
vim.cmd.hi('Function guifg=' .. soul)

vim.cmd.hi('Statement guifg=' .. bone)
vim.cmd.hi('Conditional guifg=' .. bone)
vim.cmd.hi('Repeat guifg=' .. bone)
vim.cmd.hi('Label guifg=' .. bone)
vim.cmd.hi('Operator guifg=' .. ash)
vim.cmd.hi('Keyword guifg=' .. bone)
vim.cmd.hi('Exception guifg=' .. bone)

vim.cmd.hi('PreProc guifg=' .. iron)
vim.cmd.hi('Include guifg=' .. iron)
vim.cmd.hi('Define guifg=' .. iron)
vim.cmd.hi('Macro guifg=' .. iron)

vim.cmd.hi('Type guifg=' .. soul)
vim.cmd.hi('StorageClass guifg=' .. soul)
vim.cmd.hi('Structure guifg=' .. soul)
vim.cmd.hi('Typedef guifg=' .. soul)

vim.cmd.hi('Special guifg=' .. ember)
vim.cmd.hi('SpecialComment guifg=' .. shadow)
vim.cmd.hi('Todo guifg=' .. ember .. ' guibg=NONE gui=bold')

vim.cmd.hi('Error guifg=' .. error_red)
vim.cmd.hi('Underlined guifg=' .. soul .. ' gui=underline')
vim.cmd.hi('Title guifg=' .. ash .. ' gui=bold')
vim.cmd.hi('Directory guifg=' .. soul)
