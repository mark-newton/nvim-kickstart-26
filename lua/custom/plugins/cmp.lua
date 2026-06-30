vim.pack.add({
  'https://github.com/Exafunction/codeium.nvim',
  -- 'https://github.com/roobert/tailwindcss-colorizer-cmp.nvim'
})

-- function used by blink cmp
local has_words_before = function()
  local col = vim.api.nvim_win_get_cursor(0)[2]
  if col == 0 then
    return false
  end
  local line = vim.api.nvim_get_current_line()
  return line:sub(col, col):match '%s' == nil
end

require('blink.cmp').setup {
  keymap = {
    preset = 'default',
    ['<Tab>'] = {
      function(cmp)
        if has_words_before() then
          return cmp.insert_next()
        end
      end,
      'fallback',
    },
    ['<S-Tab>'] = {
      function(cmp)
        if has_words_before() then
          return cmp.insert_prev()
        end
      end,
      'fallback',
    },
    ['<CR>'] = { 'accept', 'fallback' },
  },
  completion = {
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 500,
      window = {
        border = 'rounded',
        winhighlight = 'NormalFloat:NormalFloat,FloatBorder:FloatBorder,Normal:Normal',
      },
    },
    list = { selection = { preselect = false } },
    menu = {
      max_height = 13,
      draw = {
        gap = 2,
        columns = {
          { 'label', 'label_description', gap = 1 },
          { 'kind_icon', 'kind', gap = 1 },
        },
      },
      -- border = 'rounded',
      -- winhighlight = 'NormalFloat:NormalFloat,FloatBorder:FloatBorder,Normal:Normal',
    },
    trigger = { prefetch_on_insert = false },
    ghost_text = { enabled = true },
  },
  cmdline = {
    keymap = {
      preset = 'cmdline',
      ['<CR>'] = { 'accept', 'fallback' },
      ['<Up>'] = { 'select_prev', 'fallback' },
      ['<Down>'] = { 'select_next', 'fallback' },
    },
    completion = {
      list = { selection = { preselect = false } },
      menu = { auto_show = true },
      ghost_text = { enabled = true },
    },
  },
  sources = {
    default = { 'lsp', 'blade-nav', 'path', 'buffer', 'snippets' },
    providers = {
      codeium = { name = 'Codeium', module = 'codeium.blink', async = true },
      ['blade-nav'] = { name = 'blade-nav', module = 'blade-nav.integrations.blink', async = true },
    },
    per_filetype = {
      php = { inherit_defaults = true, 'codeium' },
      python = { inherit_defaults = true, 'codeium' },
    },
  },
  signature = {
    enabled = true,
    window = {
      border = 'rounded',
      show_documentation = false,
    },
  },
}
