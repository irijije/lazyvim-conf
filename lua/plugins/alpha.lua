return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[

                _ _                 _   _     _       ______    _ _ _             
     /\        (_) |               | | | |   ( )     |  ____|  | (_) |            
    /  \   _ __ _| |___      _____ | |_| |__ |/ ___  | |__   __| |_| |_ ___  _ __ 
   / /\ \ | '__| | __\ \ /\ / / _ \| __| '_ \  / __| |  __| / _` | | __/ _ \| '__|
  / ____ \| |  | | |_ \ V  V / (_) | |_| | | | \__ \ | |___| (_| | | || (_) | |   
 /_/    \_\_|  |_|\__| \_/\_/ \___/ \__|_| |_| |___/ |______\__,_|_|\__\___/|_|   
                                                                                  
                                                                                  

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
