return {
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      if vim.env.SSH_TTY then
        vim.g.clipboard = {
          name = "osc52-ssh",
          copy = {
            ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
            ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
          },
          paste = {
            ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
            ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
          },
        }
      end
    end,
  },
}
