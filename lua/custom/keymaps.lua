-- delete/copy/paste smarts (the _ prefix stops copying into register)
-- NOTE: these mappings assume you don't set clipboard to the system one (use leader y to copy to system)
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', 'Y', 'yg$')
--vim.keymap.set("n", "<leader>a", "<cmd>%y+<cr>") -- remapping leader-a to ai keymaps
vim.keymap.set('x', '<leader>p', [["_dP]])
--vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set({ 'n', 'v' }, '<leader>Y', [["+Y]])
--vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
--
-- esc
vim.keymap.set('i', '<C-c>', '<Esc>')

-- folding
vim.keymap.set('n', '<tab>', 'za')
--vim.keymap.set("n", "<leader>o", "zR")

-- splits
vim.keymap.set('n', '<leader>v', '<C-w>v') -- split window vertically
vim.keymap.set('n', '<leader>b', '<C-w>s') -- split window horizontally (h used by gitsigns)
vim.keymap.set('n', '<leader>w', '<C-w>w') -- swap to next window
vim.keymap.set('n', '<leader>x', ':close<CR>') -- close current split window
vim.keymap.set('n', '<leader><left>', ':vertical resize +20<cr>')
vim.keymap.set('n', '<leader><right>', ':vertical resize -20<cr>')
vim.keymap.set('n', '<leader><up>', ':resize +10<cr>')
vim.keymap.set('n', '<leader><down>', ':resize -10<cr>')

-- function keys
vim.keymap.set('n', '<f2>', '<C-w>v') -- split window vertically
vim.keymap.set('n', '<f3>', ':clo<CR>') -- close current split window
vim.keymap.set('v', '<f5>', 'gc') -- visual mode commenting
vim.keymap.set('n', '<f7>', '<C-w>w') -- swap to next window
vim.keymap.set('n', '<f9>', '<C-w>w') -- swap to next window

-- other smarts
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<leader>tl', function()
  local number = vim.wo.number
  vim.wo.number = not number
  vim.wo.relativenumber = not number
end, { desc = '[T]oggle [L]ine Numbers' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Show [D]iagnostic message' })

-- plugin keymaps
vim.keymap.set({ 'n', 'v' }, '<leader>/', ':Pounce<CR>', { silent = true, desc = 'Pounce' })
vim.keymap.set('n', '-', '<cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>', { desc = 'Open parent directory in MiniFiles' })
vim.keymap.set('n', '<leader>tc', '<cmd>ColorizerToggle<CR>', { desc = '[T]oggle [C]olorizer' })
vim.keymap.set('n', '<leader>gs', '<cmd>Telescope git_status<cr>', { desc = '[G]it [S]tatus' })
vim.keymap.set('n', '<leader>gc', '<cmd>Telescope git_commits<cr>', { desc = '[G]it [C]ommits' })
vim.keymap.set('n', '<leader>gb', '<cmd>Telescope git_bcommits<cr>', { desc = '[G]it [B]uffer commits' })
vim.keymap.set(
  'n',
  '<leader>o',
  "<cmd>lua require('telescope.builtin').lsp_document_symbols({symbols={'method','function'}, layout_strategy='vertical',layout_config={width=0.3, height=0.4},previewer=false })<cr>",
  { desc = 'Document [O]utline Function' }
)
