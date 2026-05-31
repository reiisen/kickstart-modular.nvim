local pure_white = '#FFFFFF'
local lavender = '#D8BFD8' -- Light purple for comments (readable on warm skin tones)
local neon_cyan = '#00FFFF'
local hot_pink = '#FF1493' -- Deep Pink for keywords

local spring_green = '#00FF7F'
local gold = '#FFD700'
local dodger_blue = '#1E90FF'
local pale_cyan = '#E0FFFF'

local alert_red = '#FF3333'

vim.cmd 'TransparentEnable'

vim.cmd.hi('StatusLine guifg=' .. pure_white)
vim.cmd.hi('LineNr guifg=' .. neon_cyan)
vim.cmd.hi('CursorLineNr guifg=' .. spring_green .. ' gui=bold')

vim.cmd.hi('Normal guifg=' .. pure_white)

vim.cmd.hi('Comment guifg=' .. lavender .. ' gui=italic')

vim.cmd.hi('Constant guifg=' .. spring_green)
vim.cmd.hi('Number guifg=' .. spring_green)
vim.cmd.hi('Boolean guifg=' .. spring_green)
vim.cmd.hi('Float guifg=' .. spring_green)
vim.cmd.hi('Character guifg=' .. spring_green)

vim.cmd.hi('String guifg=' .. gold)

vim.cmd.hi('Identifier guifg=' .. pale_cyan)
vim.cmd.hi('Function guifg=' .. dodger_blue)

vim.cmd.hi('Statement guifg=' .. hot_pink)
vim.cmd.hi('Conditional guifg=' .. hot_pink)
vim.cmd.hi('Repeat guifg=' .. hot_pink)
vim.cmd.hi('Label guifg=' .. hot_pink)
vim.cmd.hi('Operator guifg=' .. pure_white)
vim.cmd.hi('Keyword guifg=' .. hot_pink)
vim.cmd.hi('Exception guifg=' .. hot_pink)

vim.cmd.hi('PreProc guifg=' .. neon_cyan)
vim.cmd.hi('Include guifg=' .. neon_cyan)
vim.cmd.hi('Define guifg=' .. neon_cyan)
vim.cmd.hi('Macro guifg=' .. neon_cyan)

vim.cmd.hi('Type guifg=' .. dodger_blue)
vim.cmd.hi('StorageClass guifg=' .. dodger_blue)
vim.cmd.hi('Structure guifg=' .. dodger_blue)
vim.cmd.hi('Typedef guifg=' .. dodger_blue)

vim.cmd.hi('Special guifg=' .. spring_green)
vim.cmd.hi('SpecialComment guifg=' .. lavender)
vim.cmd.hi('Todo guifg=' .. spring_green .. ' guibg=NONE gui=bold')

vim.cmd.hi('Error guifg=' .. alert_red)
vim.cmd.hi('Underlined guifg=' .. dodger_blue .. ' gui=underline')
vim.cmd.hi('Title guifg=' .. pure_white .. ' gui=bold')
vim.cmd.hi('Directory guifg=' .. dodger_blue)
