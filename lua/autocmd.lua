local tectonic_group = vim.api.nvim_create_augroup('TectonicAutoCompile', { clear = true })

vim.api.nvim_create_autocmd('BufWritePost', {
  group = tectonic_group,
  pattern = '*.tex',
  desc = 'Format and compile LaTeX files asynchronously on save',
  callback = function(args)
    local filepath = args.match
    local view = vim.fn.winsaveview()

    -- 1. Format the file synchronously using Neovim's modern system API.
    -- Using :wait() blocks just long enough to format, but avoids the
    -- ugly shell flash and external side-effects of `!`.
    vim.system({ './tex-fmt', filepath }):wait()

    -- 2. Safely reload the buffer.
    -- `checktime` triggers internal Neovim events (like FileChangedShellPost)
    -- that tell plugins like Treesitter/todo-comments to re-parse the file properly.
    -- NEVER use `edit` mid-autocmd if you can avoid it!
    vim.cmd 'checktime'
    vim.fn.winrestview(view)

    -- (Optional but recommended) Force treesitter/syntax to resync
    -- just in case the file shifted drastically.
    vim.cmd 'syntax sync fromstart'

    -- 3. Compile the file asynchronously
    vim.system({ 'tectonic', filepath }, { text = true }, function(result)
      vim.schedule(function()
        if result.code == 0 then
          vim.notify('Tectonic: Compilation successful', vim.log.levels.INFO)
        else
          vim.notify('Tectonic: Compilation failed!\n' .. (result.stderr or ''), vim.log.levels.ERROR)
        end
      end)
    end)
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'tex',
  callback = function()
    vim.keymap.set('v', '<leader>i', 'c\\textit{<C-r>"}<Esc>', { buffer = true })

    vim.keymap.set('v', '<leader>b', 'c\\textbf{<C-r>"}<Esc>', { buffer = true })
  end,
})
