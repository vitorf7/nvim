-- local opts = {
-- 	on_attach = require("user.lsp").on_attach,
-- 	capabilities = require("user.lsp").capabilities,
-- }
local ih = require("inlay-hints")
require("lazyvim.plugins.lsp")
return {
  on_attach = require("lazyvim.util").lsp.on_attach(function(client, bufnr)
    if client.name == "gopls" then
      if not client.server_capabilities.semanticTokensProvider then
        local semantic = client.config.capabilities.textDocument.semanticTokens
        client.server_capabilities.semanticTokensProvider = {
          full = true,
          legend = {
            tokenTypes = semantic.tokenTypes,
            tokenModifiers = semantic.tokenModifiers,
          },
          range = true,
        }
      end
    end
    if client.server_capabilities.codeLensProvider then
      local _, _ = pcall(vim.lsp.codelens.refresh)
    end

    ih.on_attach(client, bufnr)
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
        gc_details = true,
        generate = true,
        run_govulncheck = true,
        test = true,
        tidy = true,
        upgrade_dependency = true,
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
