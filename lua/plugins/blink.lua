return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      vim.tbl_deep_extend("force", opts.sources, {
        per_filetype = {
          codecompanion = { "codecompanion" },
        },
      })
    end,
  },
}
