return {
  "williamboman/mason.nvim",
  -- dependencies = {
  --   {
  --     "williamboman/mason-lspconfig.nvim",
  --     opts = function(_, opts)
  --       opts.automatic_installation = true
  --       opts.ensure_installed = opts.ensure_installed or {}
  --       opts.ensure_installed = vim.list_extend(opts.ensure_installed, require("config.utils").servers)
  --     end,
  --   },
  -- },
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {}
    opts.ensure_installed = vim.list_extend(opts.ensure_installed, require("config.utils").linters)
  end,
}
