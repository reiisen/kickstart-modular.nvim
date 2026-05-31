return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      watch_for_changes = true,
      delete_to_trash = true,
      use_default_keymaps = true,
      view_options = {
        show_hidden = true,
      },
      columns = {
        'permissions',
        'size',
        'mtime',
      },
      -- Floating window configuration
      float = {
        border = 'rounded', -- <--- THE FIX
        win_options = {
          winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
        },
        override = function(conf)
          -- make the floating window smaller
          local width = math.floor(vim.o.columns * 0.8)
          local height = math.floor(vim.o.lines * 0.8)

          -- Calculate center position
          local col = math.floor((vim.o.columns - width) / 2)
          local row = math.floor((vim.o.lines - height) / 2) - 1

          conf.col = col
          conf.row = row
          conf.width = width
          conf.height = height

          return conf
        end,
      },
      confirmation = {
        border = 'rounded', -- <--- THE FIX
        max_width = 0.8,
        win_options = {
          winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
        },
      },
      progress = {
        border = 'rounded', -- <--- THE FIX
        max_width = 0.6,
        win_options = {
          winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
        },
      },
      ssh = {
        border = 'rounded', -- <--- THE FIX
      },
      keymaps_help = {
        border = 'rounded', -- <--- THE FIX
      },
      keymaps = {
        ['<Tab>'] = { 'actions.parent', mode = 'n' },
        ['q'] = { 'actions.close', mode = 'n' },
        ['<Esc>'] = { 'actions.close', mode = 'n' },
      },
    },
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
  },
}
