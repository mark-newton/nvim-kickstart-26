vim.pack.add{'https://github.com/jwbaldwin/oscura.nvim'}
require('oscura').setup {
  cursorline = vim.o.cursorline,
  transparent_background = true,
  nvim_tree_darker = false,
  undercurl = true,
  treesitter_context_bg = false,
  float_borderless = false,
}
vim.cmd.colorscheme 'oscura'

-- NOTE: only need this when the colorscheme doesn't support overrides
vim.pack.add{'https://github.com/cwebster2/color-overrides.nvim'}
local override_reset = {
  'DiffAdd',
  'DiffChange',
  'DiffDelete',
  'DiffText',
  'Folded',
  'MatchParen',
}
local override_set = {
  -- kanagawa/kanso: zenblue2 = #2D4F67, oldWhite = #C8C093, inkYellow = #c4b28a
  CurSearch = { guibg = '#DCA561', guifg = '#15171c' },
  CursorLine = { guibg = '#1c1e22' },
  DiagnosticSignError = { guifg = '#db4b4b' },
  DiagnosticSignHint = { guifg = '#1abc9c' },
  DiagnosticSignInfo = { guifg = '#0db9d7' },
  DiagnosticSignWarn = { guifg = '#e0af68' },
  DiffAdd = { guibg = '#315532', guifg = '#ffffff' }, -- new line
  DiffChange = { guibg = 'NONE', guifg = '#afd7ff' }, -- change line
  DiffDelete = { guibg = '#713431', guifg = '#ffffff' }, -- del line
  DiffText = { guibg = '#29416f', guifg = '#ffffff' }, -- change text
  FloatBorder = { guibg = 'NONE', guifg = '#68737d' },
  Folded = { guibg = 'NONE', guifg = '#68737d' },
  GitSignsAdd = { guifg = '#0db9d7' },
  GitSignsChange = { guifg = '#e0af68' },
  GitSignsDelete = { guifg = '#db4b4b' },
  IncSearch = { guibg = '#DCA561', guifg = '#15171c' },
  MatchParen = { guibg = 'NONE', guifg = 'orange' },
  NormalFloat = { guifg = '#68737d', guibg = 'NONE' },
  Pmenu = { guibg = '#223249', guifg = '#dcd7ba' },
  PmenuSbar = { guibg = '#223249' },
  PmenuSel = { guibg = '#2d4f67' },
  PmenuThumb = { guibg = '#2d4f67' },
  BlinkCmpMenuSelection = { guibg = '#2d4f67' },
  Search = { guibg = '#2d4f67', guifg = '#ffffff' },
  Special = { guifg = '#c4b28a' },
  ['@tag.attribute'] = { guifg = '#9099a1' },
  ['@tag.delimiter'] = { guifg = '#c4b28a' },
  ['@type.builtin'] = { guifg = '#c4b28a' },
  TelescopeNormal = { guibg = 'NONE' },
  TelescopePreviewBorder = { guibg = 'NONE', guifg = '#68737d' },
  TelescopePromptBorder = { guibg = 'NONE', guifg = '#68737d' },
  TelescopePromptNormal = { guibg = 'NONE' },
  TelescopePromptTitle = { guibg = 'NONE', guifg = '#FFFFFF' },
  TelescopeResultsBorder = { guibg = 'NONE', guifg = '#68737d' },
  TelescopeTitle = { guibg = 'NONE', guifg = '#FFFFFF' },
  Visual = { guibg = '#2d4f67', guifg = '#FFFFFF' },
  WhichKeyFloat = { guibg = 'NONE' },
  WinSeparator = { guibg = 'NONE', guifg = '#68737d' },
}
require('color-overrides').set_overrides(override_reset, override_set)
