return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      go = { "gofumpt", "goimports", "golines" },
      toml = { "taplo" },
    },
    formatters = {
      golines = {
        args = { "--base-formatter=gofumpt", "--ignore-generated", "--max-len=140" },
      },
    },
  },
}
