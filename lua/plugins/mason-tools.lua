local M = {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  opts = {
    ensure_installed = require("config.utils").mason_tools,
  },
}

return M
