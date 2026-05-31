return {
  {
    dir = vim.fn.stdpath 'config',
    name = 'my-terminal-manager',

    -- Generate keys 1-9 plus 0
    keys = (function()
      local keys = {}

      -- Map gt1 through gt9
      for i = 1, 9 do
        table.insert(keys, {
          'gt' .. i,
          function()
            require('plugins.local.terminally_fucking_ill').toggle(i)
          end,
          desc = 'Toggle Terminal ' .. i,
        })
      end

      -- Map gt0 to Terminal 10
      table.insert(keys, {
        'gt0',
        function()
          require('user.terminal').toggle(10)
        end,
        desc = 'Toggle Terminal 10',
      })

      return keys
    end)(),
  },
}
