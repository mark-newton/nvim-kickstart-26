# HOW TO NOTES

## Overview
- This repo is a fork of https://github.com/nvim-lua/kickstart.nvim
- Most of the kickstart config resides in init.lua with some extras in lua/kickstart
- Aim to keep kickstart config the same then use overrides for custom keymaps, options and plugins

## Git Commands
- `git remote -v`: shows repo setup
- `git fetch upstream`: fetch latest chanegs from upstream without merge
- `git merge upstream/master`: merge the upstream changes from master branch

You can also git pull to fetch from both upstream and your own repo:
```
git branch --set-upstream-to=upstream/master main
git pull
```

### Git cloning steps
For reference these are the clone steps keeping upstream linked
```
git clone https://github.com/original/nvim-config ~/.config/nvim
cd ~/.config/nvim
git remote rename origin upstream
git remote add origin https://github.com/you/nvim-config
git branch -m master main # need this if upstream is master and you want to use main
git push -u origin main
```

## Custom changes from kickstart
- Default plugins
    - kickstart includes a set of default plugins with common settings (eg. LSP, auto-complete)
    - some changes to default plugins need to be done in the main init.lua, so this could create merge conflicts
    - attempt to put default plugin overrides into lua/custom/plugins/overrides.lua
- Keymaps and options
    - init.lua modified to import keymaps from lua/custom/keymaps.lua
    - init.lua modified to import options from lua/custom/options.lua
    - it does this just before the plugins section
- Plugins:
    - init.lua is setup to import plugins from lua/custom/plugins
    - it should import any file in this directory, make sure each file returns a lua table
    - use overrides.lua to override the default plugins


## Plugin updates

Neovim v12 comes with it's own plugin manager "vim.pack" so most people migrating from lazy to vim.pack

### Adding new plugins
```
vim.pack.add { 'https://github.com/repo-path' }
require('plugin-name').setup {
    ...
}
```

Note: if a plugin has dependencies you can include them in the add table, eg. 
```
vim.pack.add({
    'https://github.com/repo-path-dep1',
    'https://github.com/repo-path-dep2',
    'https://github.com/repo-path-plugin'
})
```

### Keeping installed plugins updated
- run `:lua vim.pack.update()`

### Delete plugin
- remote from config
- run `:lua vim.pack.del({ 'plugin-name' })`

