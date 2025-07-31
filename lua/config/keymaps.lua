vim.keymap.set("n", "<leader>gc", ":Telescope git_bcommits<CR>", {
  desc = "Git Commits (Buffer)",
  noremap = true,
  silent = true,
})
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {
  desc = "Terminal: Exit to Normal Mode",
  silent = true,
})
