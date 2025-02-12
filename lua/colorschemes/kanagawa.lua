return {
  {
    'rebelot/kanagawa.nvim',
    opts = {
      undercurl = false,
      keywordStyle = {},
      statementStyle = {},
      transparent = true,
      --customization here
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = 'none',
              bg_p2 = 'none',
            },
          },
        },
      },
    },
    init = function() end,
  },
}
