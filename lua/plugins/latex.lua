return {
  {
    -- 1. Point to your own config folder instead of a GitHub URL
    dir = vim.fn.stdpath 'config',

    -- 2. Give it a name so Lazy doesn't get confused
    name = 'latex-helper',

    -- 3. Load it only when opening .tex files
    ft = 'tex',

    -- 4. Set up the keymap here (Lazy loads the plugin when you press this)
    keys = {
      {
        'gl',
        function()
          require('plugins.local.latex_helper').toggle_compiler()
        end,
        desc = 'Open a new terminal dedicated for latex compilation',
      },
    },

    -- 5. The config function runs when the plugin loads
    config = function()
      -- This requires the file from Step 1 and runs setup()
      require('plugins.local.latex_helper').setup()
    end,
  },
}
