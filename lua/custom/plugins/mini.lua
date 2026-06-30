require('mini.ai').setup { n_lines = 500 }
require('mini.surround').setup()
-- basic default mappings for surround:
-- sa'    add quotes (visual mode)
-- sr'"   replace ' with " (normal mode cursor)
-- sd'    delete ' (normal mode cursor)

require('mini.indentscope').setup {
  symbol = '│',
  options = {
    try_as_border = true,
  },
}

require('mini.files').setup {
  mappings = {
    go_in = '<right>',
    go_out = '<left>',
    go_in_plus = '<CR>',
    reveal_cwd = '.',
  },
}
vim.keymap.set('n', '-', '<cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>', { desc = 'Open parent directory in MiniFiles' })

require('mini.splitjoin').setup {
  mappings = {
    toggle = '<leader>j',
  },
}

require('mini.icons').setup {}

--  Check out: https://github.com/echasnovski/mini.nvim for more
