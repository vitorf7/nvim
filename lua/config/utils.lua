local M = {}

M.servers = {
  "lua_ls",
  "cssls",
  "html",
  "tsserver",
  "eslint",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
  "gopls",
  "phpactor",
  "intelephense",
  "terraformls",
  "tflint",
  "bufls",
  "cucumber_language_server",
  "dockerls",
  "marksman",
  "dockerls",
  "golangci_lint_ls",
  "taplo",
}

M.linters = {
  "buf",
  "hadolint",
  "markdownlint",
  "misspell",
  "phpcs",
  "tflint",
  "yamllint",
  "prettier",
  "stylua",
}

M.parsers = {
  "bash",
  "cmake",
  "css",
  "dockerfile",
  "dot",
  "hcl",
  "html",
  "http",
  "javascript",
  "json",
  "json5",
  "lua",
  "make",
  "markdown",
  "markdown_inline",
  "php",
  "phpdoc",
  "proto",
  "python",
  "query",
  "scss",
  "sql",
  "toml",
  "tsx",
  "typescript",
  "vim",
  "vue",
  "yaml",
  "terraform",
  "go",
  "godot_resource",
  "gomod",
  "gosum",
  "gowork",
  "toml",
}

M.mason_tools = {
  --DAP
  "delve",
  "js-debug-adapter",
  "php-debug-adapter",

  -- Linter
  "buf", -- also a formatter
  "hadolint",
  "markdownlint", -- also a formatter
  "misspell",
  "phpcs",
  "tflint",
  "yamllint",
  "golangci-lint",
  "jsonlint",

  -- Formatter
  "gofumpt",
  "goimports",
  "golines",
  "prettier",
  "stylua",
  "yamlfmt",
  "black",
  "php-cs-fixer",
  "ts-standard",

  -- Other tools
  "gotests",
  "gomodifytags",
  "iferr",
  "impl",
  "gotestsum",
}

return M
