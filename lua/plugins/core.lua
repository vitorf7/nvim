return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  { import = "plugins" },
  -- DAP
  { import = "lazyvim.plugins.extras.dap.core" },
  { import = "lazyvim.plugins.extras.dap.nlua" },

  -- Languages
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.json" },
  { import = "lazyvim.plugins.extras.lang.yaml" },
  { import = "lazyvim.plugins.extras.lang.terraform" },

  -- Neotest
  { import = "lazyvim.plugins.extras.test.core" },

  -- UI
  { import = "lazyvim.plugins.extras.ui.edgy" },

  -- Projects
  { import = "lazyvim.plugins.extras.util.project" },
}
