return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    opts = {
      panel = {
        layout = {
          position = 'right',
          ratio = 0.5,
        },
      },
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = '<M-p>',
        },
      },
    },
    enabled = true,
  },

  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'zbirenbaum/copilot.lua' },
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {},
    enabled = true,
  },
}
