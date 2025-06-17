return {
  "olimorris/codecompanion.nvim",
  lazy = false,
  opts = {
    extensions = {
      mcphub = {
        callback = "mcphub.extensions.codecompanion",
        opts = {
          make_vars = true,
          make_slash_commands = true,
          show_result_in_chat = true,
        },
      },
    },
    adapters = {
      gemini = function()
        return require("codecompanion.adapters").extend("gemini", {
          env = {
            api_key = os.getenv("GEMINI_API_KEY"),
          },
        })
      end,
    },
    strategies = {
      chat = {
        adapter = "gemini",
      },
      inline = {
        adapter = "gemini",
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ravitemer/mcphub.nvim",
  },
  keys = {
    {
      "<C-a>",
      "<cmd>CodeCompanionActions<cr>",
      mode = { "n", "v" },
      desc = "Code Companion Actions",
    },
    {
      "<Leader>a",
      "<cmd>CodeCompanionChat Toggle<cr>",
      mode = { "n", "v" },
      desc = "Code Companion Chat Toggle",
    },
    {
      "ga",
      "<cmd>CodeCompanionChat Add<cr>",
      mode = "v",
      desc = "Add Selection to Chat",
    },
  },
}
