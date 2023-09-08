-- local opts = {
-- 	on_attach = require("user.lsp").on_attach,
-- 	capabilities = require("user.lsp").capabilities,
-- }
require("lazyvim.plugins.lsp")
return {
  on_attach = require("lazyvim.util").on_attach(function(client, _)
    if client.server_capabilities.codeLensProvider then
      local _, _ = pcall(vim.lsp.codelens.refresh)
    end
  end),
  -- capabilities = opts.capabilities,
  settings = {
    -- https://go.googlesource.com/vscode-go/+/HEAD/docs/settings.md#settings-for
    gopls = {
      analyses = {
        nilness = true,
        unusedparams = true,
        unusedwrite = true,
        useany = true,
      },
      experimentalPostfixCompletions = true,
      usePlaceholders = true,
      gofumpt = true,
      codelenses = {
        generate = false,
        gc_details = true,
        test = true,
        tidy = true,
      },
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
    },
  },
}
