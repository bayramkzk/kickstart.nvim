local set_dark_mode = function()
  vim.opt.background = 'dark'
  vim.cmd.colorscheme 'tokyonight-night'
end

local set_light_mode = function()
  vim.opt.background = 'light'
  vim.cmd.colorscheme 'tokyonight-day'
end

return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
  },

  {
    'f-person/auto-dark-mode.nvim',
    priority = 1000,
    opts = {
      update_interval = 1000,
      set_dark_mode = set_dark_mode,
      set_light_mode = set_light_mode,
    },
  },
}
