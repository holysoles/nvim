-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'jonschlinkert/markdown-toc',
  {
    'kawre/leetcode.nvim',
    --    build = ':TSUpdate html', -- if you have `nvim-treesitter` installed
    dependencies = {
      'nvim-telescope/telescope.nvim',
      -- "ibhagwan/fzf-lua",
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
    },
    opts = {
      lang = 'golang',
    },
    event = 'VeryLazy',
  },
  {
    'andythigpen/nvim-coverage',
    version = '*',
    config = function()
      require('coverage').setup {
        auto_reload = true,
      }
    end,
    event = 'VeryLazy',
  },
  {
    'qvalentin/helm-ls.nvim',
    ft = 'helm',
    opts = {},
  },
  {
    'olimorris/codecompanion.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    opts = {
      interactions = {
        cli = {
          agent = 'claude_code',
          agents = {
            claude_code = {
              cmd = 'claude',
              args = {},
              description = 'Claude Code CLI',
              provider = 'terminal',
            },
          },
        },
      },
    },
  },
  {
    'coder/claudecode.nvim',
    dependencies = { 'folke/snacks.nvim' },
    config = true,
    -- `cmd` lets lazy.nvim create command stubs that load the plugin on first use,
    -- so `:ClaudeCode` and friends work on a fresh start. Without it, a keys-only
    -- spec defers loading until a <leader>a* mapping is pressed and the commands
    -- would not exist yet.
    cmd = {
      'ClaudeCode',
      'ClaudeCodeFocus',
      'ClaudeCodeSelectModel',
      'ClaudeCodeAdd',
      'ClaudeCodeSend',
      'ClaudeCodeTreeAdd',
      'ClaudeCodeStatus',
      'ClaudeCodeStart',
      'ClaudeCodeStop',
      'ClaudeCodeOpen',
      'ClaudeCodeClose',
      'ClaudeCodeDiffAccept',
      'ClaudeCodeDiffDeny',
      'ClaudeCodeCloseAllDiffs',
    },
    keys = {
      { '<leader>a', nil, desc = 'AI/Claude Code' },
      { '<leader>ac', '<cmd>ClaudeCode<cr>', desc = 'Toggle Claude' },
      { '<leader>af', '<cmd>ClaudeCodeFocus<cr>', desc = 'Focus Claude' },
      { '<leader>ar', '<cmd>ClaudeCode --resume<cr>', desc = 'Resume Claude' },
      { '<leader>aC', '<cmd>ClaudeCode --continue<cr>', desc = 'Continue Claude' },
      { '<leader>am', '<cmd>ClaudeCodeSelectModel<cr>', desc = 'Select Claude model' },
      { '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', desc = 'Add current buffer' },
      { '<leader>as', '<cmd>ClaudeCodeSend<cr>', mode = 'v', desc = 'Send to Claude' },
      {
        '<leader>as',
        '<cmd>ClaudeCodeTreeAdd<cr>',
        desc = 'Add file',
        ft = { 'NvimTree', 'neo-tree', 'oil', 'minifiles', 'netrw', 'snacks_picker_list' },
      },
      -- Diff management
      { '<leader>aa', '<cmd>ClaudeCodeDiffAccept<cr>', desc = 'Accept diff' },
      { '<leader>ad', '<cmd>ClaudeCodeDiffDeny<cr>', desc = 'Deny diff' },
    },
  },
}
