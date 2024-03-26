return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      go = { "gofumpt", "goimports", "golines" },
      toml = { "taplo" },
      sql = { "sql_formatter" },
      mysql = { "sql_formatter" },
      proto = { "buf" },
    },
    formatters = {
      golines = {
        args = { "--base-formatter=gofumpt", "--ignore-generated", "--max-len=140" },
      },
    },
  },
}
