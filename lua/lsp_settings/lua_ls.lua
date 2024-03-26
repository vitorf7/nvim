local ih = require("inlay-hints")
return {
  on_attach = require("lazyvim.util").lsp.on_attach(function(client, bufnr)
    ih.on_attach(client, bufnr)
  end),
  settings = {
    Lua = {
      format = {
        enable = false,
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
      telemetry = {
        enable = false,
      },
      hint = {
        enable = true,
      },
    },
  },
}
