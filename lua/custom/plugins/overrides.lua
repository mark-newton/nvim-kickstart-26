-- This config is used to override the default config in kickstart init.lua
-- It overrides the relevant opt sections for each default plugin

require('which-key').setup {
  delay = 500,
  preset = 'helix',
  win = {
    border = 'rounded', -- none, single, double, shadow
    height = {
      max = math.huge,
    },
  },
  icons = {
    rules = false,
    breadcrumb = ' ', -- symbol used in the command line area that shows your active key combo
    separator = '󱦰  ', -- symbol used between a key and it's label
    group = '󰹍 ', -- symbol prepended to a group
  },
}

require('gitsigns').setup {
  preview_config = { border = 'rounded' },
  signs = {
    add = { text = '┃' },
    change = { text = '┃' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
    untracked = { text = '┆' },
  },
}
