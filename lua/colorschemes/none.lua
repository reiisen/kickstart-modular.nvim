-- Palette Definitions
local main_190 = '#BEBEBE' -- Main Text (190/255 Grayscale)
local detail_255 = '#FFFFFF' -- Details/Numbers (Pure White)
local coral = '#FF7F50' -- Strings & Imports
local dimmed = '#555555' -- Comments/Line Numbers (Dimmed to reduce noise)
local error_red = '#FF5555'

vim.cmd 'TransparentEnable'

-- UI Elements
vim.cmd.hi('StatusLine guifg=' .. main_190)
vim.cmd.hi('LineNr guifg=' .. dimmed)
vim.cmd.hi('CursorLineNr guifg=' .. detail_255 .. ' gui=bold')
vim.cmd.hi('VertSplit guifg=' .. dimmed .. ' guibg=NONE')

-- Main Text Body
vim.cmd.hi('Normal guifg=' .. main_190)

-- Comments
vim.cmd.hi('Comment guifg=' .. dimmed .. ' gui=italic')

-- Details (Numbers, Booleans, Constants) -> 255 White
vim.cmd.hi('Constant guifg=' .. detail_255)
vim.cmd.hi('Number guifg=' .. coral)
vim.cmd.hi('Boolean guifg=' .. detail_255)
vim.cmd.hi('Float guifg=' .. detail_255)
vim.cmd.hi('Character guifg=' .. detail_255)

-- Strings -> Coral
vim.cmd.hi('String guifg=' .. coral)

-- Imports & Preprocessor -> Coral
vim.cmd.hi('Include guifg=' .. coral)
vim.cmd.hi('PreProc guifg=' .. coral)
vim.cmd.hi('Define guifg=' .. coral)
vim.cmd.hi('Macro guifg=' .. coral)

-- Everything else -> Main 190 Gray (Monochrome look)
vim.cmd.hi('Identifier guifg=' .. detail_255)
vim.cmd.hi('Function guifg=' .. detail_255)

vim.cmd.hi('Statement guifg=' .. main_190)
vim.cmd.hi('Conditional guifg=' .. main_190)
vim.cmd.hi('Repeat guifg=' .. main_190)
vim.cmd.hi('Label guifg=' .. main_190)
vim.cmd.hi('Operator guifg=' .. main_190)
vim.cmd.hi('Keyword guifg=' .. main_190)
vim.cmd.hi('Exception guifg=' .. main_190)

vim.cmd.hi('Type guifg=' .. main_190)
vim.cmd.hi('StorageClass guifg=' .. main_190)
vim.cmd.hi('Structure guifg=' .. main_190)
vim.cmd.hi('Typedef guifg=' .. main_190)

-- Special chars often act like details, so mapped to White
vim.cmd.hi('Special guifg=' .. detail_255)
vim.cmd.hi('SpecialComment guifg=' .. dimmed)
vim.cmd.hi('Todo guifg=' .. coral .. ' guibg=NONE gui=bold')

vim.cmd.hi('Error guifg=' .. error_red)
vim.cmd.hi('Underlined guifg=' .. main_190 .. ' gui=underline')
vim.cmd.hi('Title guifg=' .. detail_255 .. ' gui=bold')
vim.cmd.hi('Directory guifg=' .. main_190)
