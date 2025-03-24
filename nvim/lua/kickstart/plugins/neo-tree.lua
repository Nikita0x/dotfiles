-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'https://github.com/Nikita0x/neo-tree.nvim', --my fork
   version = false, --no updates
  commit = '940063ec5c2c81f455d25dbc7e0b918774f5e924', --pinned version
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<C-e>', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
    },
      window = {
        position = 'float',
        mappings = {
          ['<C-e>'] = 'close_window',
        },
      },
    },
  },
}
