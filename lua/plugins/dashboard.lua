return {
  "nvimdev/dashboard-nvim",
  enabled = true,
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
    table.insert(opts.config.center, 10, updateMason)
  end,
  keys = {
    { "<leader>a", "<cmd>Dashboard<cr>", desc = "Dashboard" },
  },
}
