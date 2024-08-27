local initial = true -- to prevent the initial toggle from stopping the plugin when it first starts

return {
  'supermaven-inc/supermaven-nvim',
  opts = {},
  lazy = true,
  cmd = { 'SupermavenStart', 'SupermavenToggle', 'SupermavenRestart' },
  keys = {
    {
      '<leader>tc',
      function()
        if initial then
          initial = false
          return
        end
        require('supermaven-nvim.api').toggle()
      end,
      desc = 'AI: [T]oggle [C]opilot',
    },
  },
}
