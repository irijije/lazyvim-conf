vim.keymap.set("n", "<leader>gc", ":Telescope git_bcommits<CR>", {
  desc = "Git Commits (Buffer)",
  noremap = true,
  silent = true,
})
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {
  desc = "Terminal: Exit to Normal Mode",
  silent = true,
})
vim.api.nvim_create_autocmd("User", {
  pattern = "LazyVimKeymaps",
  callback = function()
    vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Diffview Open" })
    vim.keymap.set("n", "<leader>gq", "<cmd>DiffviewClose<cr>", { desc = "Diffview Close" })
  end,
})
