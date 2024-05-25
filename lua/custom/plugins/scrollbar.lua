return {
  'petertriho/nvim-scrollbar',
  config = function()
    local status_ok, colors = pcall(require, 'tokyonight.colors')
    if not status_ok then
      require('scrollbar').setup()
      return
    end

    colors = colors.setup()
    require('scrollbar').setup {
      handle = { color = colors.fg_dark, blend = 0 },
      marks = {
        Search = { color = colors.orange },
        Error = { color = colors.error },
        Warn = { color = colors.warning },
        Info = { color = colors.info },
        Hint = { color = colors.hint },
        Misc = { color = colors.purple },
      },
      handlers = { cursor = false },
    }
  end,
}
