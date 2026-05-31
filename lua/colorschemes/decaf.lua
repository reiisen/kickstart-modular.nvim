-- Base16 Palette
local base00 = '#2d2d2d'
local base01 = '#393939'
local base02 = '#515151'
local base03 = '#777777'
local base04 = '#b4b7b4'
local base05 = '#cccccc'
local base06 = '#e0e0e0'
local base07 = '#ffffff'

local base08 = '#ff7f7b' -- red
local base09 = '#ffbf70' -- orange
local base0A = '#ffd67c' -- yellow
local base0B = '#beda78' -- green
local base0C = '#bed6ff' -- cyan/light blue
local base0D = '#90bee1' -- blue
local base0E = '#efb3f7' -- purple
local base0F = '#ff93b3' -- pink

vim.cmd 'TransparentEnable'

local hi = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- UI
hi('Normal', { fg = base05, bg = 'NONE' })
hi('NormalFloat', { fg = base05, bg = 'NONE' })

hi('StatusLine', { fg = base04, bg = base01 })
hi('VertSplit', { fg = base02, bg = 'NONE' })

hi('LineNr', { fg = base03 })
hi('CursorLineNr', { fg = base0A, bold = true })

hi('CursorLine', { bg = base01 })
hi('Visual', { bg = base02 })

-- Comments
hi('Comment', { fg = base03, italic = true })

-- Constants / literals
hi('Constant', { fg = base08 })
hi('Number', { fg = base09 })
hi('Boolean', { fg = base09 })
hi('Float', { fg = base09 })
hi('Character', { fg = base0B })

-- Strings
hi('String', { fg = base0B })

-- Functions / identifiers
hi('Identifier', { fg = base08 })
hi('Function', { fg = base0D })

-- Keywords / statements
hi('Statement', { fg = base0E })
hi('Conditional', { fg = base0E })
hi('Repeat', { fg = base0E })
hi('Keyword', { fg = base0E })
hi('Label', { fg = base0E })
hi('Exception', { fg = base08 })

-- Operators
hi('Operator', { fg = base05 })

-- Types
hi('Type', { fg = base0A })
hi('StorageClass', { fg = base0A })
hi('Structure', { fg = base0A })
hi('Typedef', { fg = base0A })

-- Preprocessor
hi('Include', { fg = base0C })
hi('PreProc', { fg = base0C })
hi('Define', { fg = base0C })
hi('Macro', { fg = base0C })

-- Specials
hi('Special', { fg = base0C })
hi('SpecialComment', { fg = base03 })

-- Diagnostics
hi('Error', { fg = base08 })

hi('DiagnosticError', { fg = base08 })
hi('DiagnosticWarn', { fg = base09 })
hi('DiagnosticInfo', { fg = base0D })
hi('DiagnosticHint', { fg = base0C })

-- Misc
hi('Todo', { fg = base0A, bold = true })
hi('Underlined', { fg = base0D, underline = true })
hi('Title', { fg = base0D, bold = true })
hi('Directory', { fg = base0D })

-- Popup menu
hi('Pmenu', { fg = base05, bg = base01 })
hi('PmenuSel', { fg = base00, bg = base0D })
hi('PmenuThumb', { bg = base03 })

-- Search
hi('Search', { fg = base00, bg = base0A })
hi('IncSearch', { fg = base00, bg = base08 })

-- Telescope
hi('TelescopeBorder', { fg = base02, bg = 'NONE' })
hi('TelescopePromptBorder', { fg = base0D, bg = 'NONE' })
hi('TelescopeResultsBorder', { fg = base02, bg = 'NONE' })
hi('TelescopePreviewBorder', { fg = base02, bg = 'NONE' })
