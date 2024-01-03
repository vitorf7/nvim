return {
  "nvim-neotest/neotest",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-neotest/neotest-plenary" },
    { "nvim-neotest/neotest-go" },
    { "haydenmeade/neotest-jest" },
  },
  opts = {
    adapters = {
      "neotest-plenary",
      ["neotest-go"] = {
        experimental = {
          test_table = true,
        },
        args = { "-count=1", "-timeout=60s" },
      },
      ["neotest-jest"] = {
        jestCommand = "npm test --",
        jestConfigFile = "jest.config.cjs",
        env = { CI = true },
        cwd = function()
          return vim.fn.getcwd()
        end,
      },
    },
  },
}
