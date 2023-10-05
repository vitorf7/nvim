vim.treesitter.language.register("markdown", "octo")
local M = {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = vim.list_extend(opts.ensure_installed, require("config.utils").parsers)
  end,
}

return M
