return {
  {
    'projekt0n/github-nvim-theme',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },

  {
    'vimpostor/vim-lumen', -- auto light/dark mode
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.lumen_light_colorscheme = 'github_light'
      vim.g.lumen_dark_colorscheme = 'github_dark_default'
    end,
  },
}
