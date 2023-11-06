return {
  "nvimdev/dashboard-nvim",
  enabled = false,
  opts = function(_, opts)
    local logo = [[
██╗      ██████╗ ██████╗ ██████╗     ██╗   ██╗██╗████████╗ ██████╗ ██████╗ ███████╗███████╗
██║     ██╔═══██╗██╔══██╗██╔══██╗    ██║   ██║██║╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝╚════██║
██║     ██║   ██║██████╔╝██║  ██║    ██║   ██║██║   ██║   ██║   ██║██████╔╝█████╗      ██╔╝
██║     ██║   ██║██╔══██╗██║  ██║    ╚██╗ ██╔╝██║   ██║   ██║   ██║██╔══██╗██╔══╝     ██╔╝ 
███████╗╚██████╔╝██║  ██║██████╔╝     ╚████╔╝ ██║   ██║   ╚██████╔╝██║  ██║██║        ██║  
╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝       ╚═══╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝        ╚═╝  
                                                                                           
]]
    logo = string.rep("\n", 5) .. logo .. "\n\n"
    opts.config.header = vim.split(logo, "\n")

    local updateMason = {
      action = "Mason",
      desc = "Update Mason",
      icon = " ",
      key = "u",
    }

    updateMason.desc = updateMason.desc .. string.rep(" ", 43 - #updateMason.desc)
    updateMason.key_format = "  %s"
    local lastPosition = #opts.config.center
    table.insert(opts.config.center, lastPosition, updateMason)
  end,
  keys = {
    { "<leader>a", "<cmd>Dashboard<cr>", desc = "Dashboard" },
  },
}
