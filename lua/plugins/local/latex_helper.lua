local M = {}

-- State to keep track of the floating terminal
local state = {
  buf = -1,
  win = -1,
}

local function create_floating_window(opts)
  opts = opts or {}
  local width = opts.width or math.floor(vim.o.columns * 0.8)
  local height = opts.height or math.floor(vim.o.lines * 0.8)

  -- Calculate center position
  local col = math.floor((vim.o.columns - width) / 2)
  local row = math.floor((vim.o.lines - height) / 2)

  -- Create a new buffer if one doesn't exist or is invalid
  if not vim.api.nvim_buf_is_valid(state.buf) then
    state.buf = vim.api.nvim_create_buf(false, true) -- No file, scratch buffer

    -- FIX: Keymaps for the terminal buffer
    -- 1. <Esc> switches from Terminal Mode to Normal Mode
    vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { buffer = state.buf })

    -- 2. 'q' closes the window (only works in Normal Mode)
    vim.keymap.set('n', 'q', function()
      if vim.api.nvim_win_is_valid(state.win) then
        vim.api.nvim_win_hide(state.win)
      end
    end, { buffer = state.buf })
  end

  -- Create the window configuration
  local win_config = {
    relative = 'editor',
    width = width,
    height = height,
    col = col,
    row = row,
    style = 'minimal',
    border = 'rounded',
  }

  -- Create the window
  state.win = vim.api.nvim_open_win(state.buf, true, win_config)

  -- MAGIC SAUCE: This removes the background.
  -- We tell the window to use the "Normal" group (which is transparent)
  -- instead of "NormalFloat" (which is usually black).
  -- We also map FloatBorder to Normal so the border lines are transparent too.
  vim.wo[state.win].winhighlight = 'Normal:Normal,FloatBorder:Normal'
end

-- 1. THE TOGGLE FUNCTION
M.toggle_compiler = function()
  if vim.api.nvim_win_is_valid(state.win) then
    -- If window is open, hide it (but keep the buffer/process running!)
    vim.api.nvim_win_hide(state.win)
  else
    -- GUARD: Stop if we are not in a Tex file!
    -- This prevents you from accidentally trying to compile 'init.lua' with latexmk
    if vim.bo.filetype ~= 'tex' and vim.bo.filetype ~= 'plaintex' then
      print 'Not a LaTeX file.'
      return
    end
    -- Capture the current file path BEFORE switching to the terminal buffer
    local file_path = vim.fn.expand '%:p'
    local file_dir = vim.fn.expand '%:p:h'
    -- Open the window
    create_floating_window()

    -- If the buffer is empty (process died or new), start latexmk
    if vim.bo[state.buf].channel == 0 then
      -- cmd: latexmk, continuous mode, pdf output, interaction=nonstopmode
      local command = 'latexmk -pdf -pvc -interaction=nonstopmode ' .. vim.fn.shellescape(file_path)
      vim.fn.termopen(command, {
        cwd = vim.fn.expand '%:p:h', -- Run in current file's directory
        on_exit = function()
          print 'Latexmk stopped.'
        end,
      })
    end
    -- Force Insert mode so you can interact if needed (e.g. 'x' to quit)
    vim.cmd 'startinsert'
  end
end

-- 2. THE FORMATTER
M.setup = function()
  vim.api.nvim_create_autocmd('BufWritePost', {
    pattern = '*.tex',
    callback = function()
      local view = vim.fn.winsaveview() -- Save scroll position

      -- Run tex-fmt on the current file
      -- silent! suppresses annoying "shell returned..." messages
      vim.cmd('silent !./tex-fmt ' .. vim.fn.expand '%')

      -- Reload the file to show changes
      vim.cmd 'edit'

      vim.fn.winrestview(view) -- Restore scroll position
    end,
  })
end

return M
