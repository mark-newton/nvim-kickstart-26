vim.pack.add({
  'https://github.com/echasnovski/mini.icons',
  'https://github.com/stevearc/oil.nvim',
})
require("oil").setup {
  columns = {
    'icon',
    'permissions',
    'size',
    'mtime',
  },
  keymaps = {
    ['q'] = { 'actions.close', mode = 'n' },
  },
  view_options = {
    show_hidden = true,
  },
  float = {
    padding = 2,
    max_width = 0.7,
    max_height = 0.7,
    border = 'rounded',
    win_options = {
      winblend = 0,
    },
    get_win_title = nil,
    preview_split = 'auto',
  },
}
vim.keymap.set('n', '<leader>e', '<cmd>Oil --float<CR>', { desc = 'Open Parent Directory in Oil' })
