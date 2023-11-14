return {
  "mrjones2014/legendary.nvim",
  -- since legendary.nvim handles all your keymaps/commands,
  -- its recommended to load legendary.nvim before other plugins
  priority = 10000,
  lazy = false,
  -- sqlite is only needed if you want to use frecency sorting
  dependencies = { "kkharji/sqlite.lua" },
  opts = {
    extensions = {
      lazy_nvim = {
        auto_register = true,
      },
      which_key = {
        auto_register = true,
      },
      diffview = true,
    },
  },
  config = function(_, opts)
    require("legendary").setup(opts)
  end,
}
