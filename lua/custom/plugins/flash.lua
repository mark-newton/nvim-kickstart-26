vim.pack.add({
  'https://github.com/folke/flash.nvim',
})
require("flash").setup()

vim.keymap.set({"n", "x", "o"}, "<enter>", function()
  require("flash").treesitter({
    actions = {
      ["<enter>"] = "next",
      ["<BS>"] = "prev"
    }
  })
end, { desc = "Treesitter incremental selection" })
