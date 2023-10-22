return {
  "goolord/alpha-nvim",
  enabled = false,
  opts = function(_, opts)
    local dashboard = require("alpha.themes.dashboard")

    local logo = [[   
      ██╗      ██████╗ ██████╗ ██████╗     ██╗   ██╗██╗████████╗ ██████╗ ██████╗ ███████╗███████╗
      ██║     ██╔═══██╗██╔══██╗██╔══██╗    ██║   ██║██║╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝╚════██║
      ██║     ██║   ██║██████╔╝██║  ██║    ██║   ██║██║   ██║   ██║   ██║██████╔╝█████╗      ██╔╝
      ██║     ██║   ██║██╔══██╗██║  ██║    ╚██╗ ██╔╝██║   ██║   ██║   ██║██╔══██╗██╔══╝     ██╔╝ 
      ███████╗╚██████╔╝██║  ██║██████╔╝     ╚████╔╝ ██║   ██║   ╚██████╔╝██║  ██║██║        ██║  
      ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝       ╚═══╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝        ╚═╝  
    ]]

    opts.section.header.val = vim.split(logo, "\n")
    local updateMason = dashboard.button("u", " " .. " Update Mason", ":Mason<CR>")
    updateMason.opts.hl = "AlphaButtons"
    updateMason.opts.hl_shortcut = "AlphaShortcut"
    table.insert(opts.section.buttons.val, 10, updateMason)
  end,
  keys = {
    { "<leader>a", "<cmd>Alpha<cr>", desc = "Dashboard" },
  },
}
