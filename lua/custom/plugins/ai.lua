vim.pack.add({
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/hrsh7th/nvim-cmp',
  'https://github.com/Exafunction/codeium.nvim'
})
require('codeium').setup {
  enable_cmp_source = true,
  virtual_text = {
    enabled = false,
    manual = false,
    -- A mapping of filetype to true or false, to enable virtual text.
    filetypes = {
      bash = true,
      python = true,
      php = true,
    },
    default_filetype_enabled = false,
    idle_delay = 75,
    virtual_text_priority = 65535,
    map_keys = true,
    accept_fallback = nil,
    key_bindings = {
      accept = '<Tab>',
      accept_word = false,
      accept_line = false,
      clear = false,
      next = '<Right>',
      prev = '<M-[>',
    },
  },
}
