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
      float = {
        win_options = {
          winhighlight = 'Normal:Normal,FloatBorder:Normal',
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
        max_width = 0.8,
        win_options = {
          winhighlight = 'Normal:Normal,FloatBorder:Normal',
        },
      },
      progress = {
        max_width = 0.6,
        win_options = {
          winhighlight = 'Normal:Normal,FloatBorder:Normal',
        },
      },
      keymaps = {
        ['<Tab>'] = { 'actions.parent', mode = 'n' },
        ['q'] = { 'actions.close', mode = 'n' },
        ['<Esc>'] = { 'actions.close', mode = 'n' },
      },
    },
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
}
