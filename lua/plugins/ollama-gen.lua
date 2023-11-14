return {
  "David-Kunz/gen.nvim",
  keys = {
    { "<leader>ga", ":Gen<CR>", desc = "Ollama Generate", mode = { "n", "v" } },
  },
  config = function(_, _)
    require("gen").model = "llama2"
    require("gen").prompts["Explain_Code"] = {
      prompt = "Please explain the following code:\n```$filetype\n$text```",
      model = "codellama",
    }
  end,
}
