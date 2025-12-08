local M = {}

local terminals = {}

local function get_state(id)
  if not terminals[id] then
    terminals[id] = { buf = -1, win = -1 }
  end
  return terminals[id]
end

local function create_floating_window(id)
  local state = get_state(id)

  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local col = math.floor((vim.o.columns - width) / 2)
  local row = math.floor((vim.o.lines - height) / 2) - 1

  if not vim.api.nvim_buf_is_valid(state.buf) then
    state.buf = vim.api.nvim_create_buf(false, true)

    vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { buffer = state.buf })

    vim.keymap.set('n', 'q', function()
      if vim.api.nvim_win_is_valid(state.win) then
        vim.api.nvim_win_hide(state.win)
      end
    end, { buffer = state.buf })
  end

  local win_config = {
    relative = 'editor',
    width = width,
    height = height,
    col = col,
    row = row,
    style = 'minimal',
    border = 'rounded',
    title = ' Terminal ' .. id .. ' ', -- Nice touch: Show which terminal it is
    title_pos = 'left',
  }

  state.win = vim.api.nvim_open_win(state.buf, true, win_config)

  -- Transparency magic
  vim.wo[state.win].winhighlight = 'Normal:Normal,FloatBorder:Normal'
end

M.toggle = function(id)
  local state = get_state(id)

  if vim.api.nvim_win_is_valid(state.win) then
    vim.api.nvim_win_hide(state.win)
  else
    create_floating_window(id)

    -- Start generic shell if process is dead
    if vim.bo[state.buf].channel == 0 then
      vim.fn.termopen(vim.o.shell) -- Uses your default shell (zsh/bash/fish)
    end

    vim.cmd 'startinsert'
  end
end

return M
