return {
  "goolord/alpha-nvim",
  enabled = true,
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
    local lastPosition = #opts.section.buttons.val
    table.insert(opts.section.buttons.val, lastPosition, updateMason)
  end,
  keys = {
    { "<leader>a", "<cmd>Alpha<cr>", desc = "Dashboard" },
  },
}
