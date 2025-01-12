return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  terminal_colors = false,
  init = function()
    vim.o.background = 'dark'
    vim.cmd.colorscheme 'gruvbox'
    vim.cmd.hi 'Comment gui=none'
  end,
  opts = {
    transparent_mode = true,
  },
}

-- vim: ts=2 sts=2 sw=2 et
