return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "SmiteshP/nvim-navbuddy",
      dependencies = {
        {
          "SmiteshP/nvim-navic",
        },
        "MunifTanjim/nui.nvim",
      },
      opts = { lsp = { auto_attach = true } },
    },
  },
  keys = {
    { "<leader>ln", "<cmd>Navbuddy<CR>", desc = "Navbuddy" },
  },
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>" }
    keys[#keys + 1] = { "gl", "<cmd>lua vim.diagnostic.open_float()<CR>" }
    keys[#keys + 1] = {
      "gr",
      function()
        require("telescope.builtin").lsp_references({ reuse_win = true })
      end,
      desc = "References",
    }
    keys[#keys + 1] = {
      "gi",
      function()
        require("telescope.builtin").lsp_implementations({ reuse_win = true })
      end,
      desc = "Goto Implementation",
    }
  end,
  ---@class opts PluginLspOpts
  opts = function(_, opts)
    opts.servers = opts.servers or {}
    for _, lsp_server in pairs(require("config.utils").servers) do
      lsp_server = vim.split(lsp_server, "@")[1]

      local require_ok, lsp_server_settings = pcall(require, "lsp_settings." .. lsp_server)
      if require_ok then
        opts.servers[lsp_server] = vim.tbl_deep_extend("force", opts.servers[lsp_server] or {}, lsp_server_settings)
      end
    end

    -- print(vim.inspect(opts.servers))
  end,
}
