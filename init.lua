vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.to = false
vim.g.have_nerd_font = true

vim.cmd.let "&stc='%=%{v:relnum?v:relnum:v:lnum} '"
vim.opt.rnu = true

require 'options'

require 'keymaps'

require 'bootstrap'

require 'plugins'

vim.cmd 'TransparentEnable'

--modify some hi's

vim.cmd.hi 'StatusLine guifg=#aaaaaa'
vim.cmd.hi 'LineNr guifg=#7f7f7f'
