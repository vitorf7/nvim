return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.options = vim.list_extend(opts.options, {
      theme = "catppuccin",
    })
  end,
}
