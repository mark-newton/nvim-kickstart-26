vim.pack.add({
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/johmsalas/text-case.nvim'
})

require('textcase').setup {
  prefix = "tc",
}
require('telescope').load_extension 'textcase'

vim.keymap.set(
  {'n', 'x'},
  '<leader>tc',
  '<cmd>TextCaseOpenTelescope<CR>',
  { desc = 'Open Textcase in Telescope' }
)
