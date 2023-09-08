local map = function(mode, lhs, rhs, desc)
  if desc then
    desc = desc
  end

  vim.keymap.set(mode, lhs, rhs, { silent = true, desc = desc, noremap = true, nowait = true })
end
map("n", "<leader>Ci", "<cmd>GoInstallDeps<Cr>", "Install Go Dependencies")
map("n", "<leader>Ct", "<cmd>GoMod tidy<cr>", "Tidy")
map("n", "<leader>Ca", "<cmd>GoTestAdd<Cr>", "Add Test")
map("n", "<leader>CA", "<cmd>GoTestsAll<Cr>", "Add All Tests")
map("n", "<leader>Ce", "<cmd>GoTestsExp<Cr>", "Add Exported Tests")
map("n", "<leader>Cg", "<cmd>GoGenerate<Cr>", "Go Generate")
map("n", "<leader>Cf", "<cmd>GoGenerate %<Cr>", "Go Generate File")
map("n", "<leader>Cc", "<cmd>GoCmt<Cr>", "Generate Comment")
map("n", "<leader>DT", "<cmd>lua require('dap-go').debug_test()<cr>", "Debug Test")
map(
  "n",
  "<leader>Cl",
  '<cmd>! golines % -w --base-formatter="gofumpt" --ignore-generated --max-len=140<Cr><Cr>',
  "Golines Fix Current File"
)
