return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[

 █████╗ ██████╗ ██╗████████╗██╗    ██╗ ██████╗ ████████╗██╗  ██╗███████╗    ███████╗██████╗ ██╗████████╗ ██████╗ ██████╗ 
██╔══██╗██╔══██╗██║╚══██╔══╝██║    ██║██╔═══██╗╚══██╔══╝██║  ██║██╔════╝    ██╔════╝██╔══██╗██║╚══██╔══╝██╔═══██╗██╔══██╗
███████║██████╔╝██║   ██║   ██║ █╗ ██║██║   ██║   ██║   ███████║███████╗    █████╗  ██║  ██║██║   ██║   ██║   ██║██████╔╝
██╔══██║██╔══██╗██║   ██║   ██║███╗██║██║   ██║   ██║   ██╔══██║╚════██║    ██╔══╝  ██║  ██║██║   ██║   ██║   ██║██╔══██╗
██║  ██║██║  ██║██║   ██║   ╚███╔███╔╝╚██████╔╝   ██║   ██║  ██║███████║    ███████╗██████╔╝██║   ██║   ╚██████╔╝██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝   ╚═╝    ╚══╝╚══╝  ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚══════╝╚═════╝ ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝
                                                                                                                         

    ]]
    dashboard.section.header.val = vim.split(logo, "\n")

    local remote_button = dashboard.button("R", " " .. " Remote", ":RemoteStart<cr>")
    remote_button.opts.hl = "AlphaButtons"
    remote_button.opts.hl_shortcut = "AlphaShortcut"
    table.insert(dashboard.section.buttons.val, 1, remote_button)

    opts.theme = "vscode" -- "alpha", "dashboard", "neo-tree", "startify", "vscode"

    return opts
  end,
}
