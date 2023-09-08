return {
  "nvim-neotest/neotest",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-neotest/neotest-plenary" },
    { "nvim-neotest/neotest-go" },
  },
  opts = {
    adapters = {
      "neotest-plenary",
      ["neotest-go"] = {
        experimental = {
          test_table = true,
        },
      },
    },
  },
}
