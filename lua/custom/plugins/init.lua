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
      -- configuration goes here
    },
  },
}
