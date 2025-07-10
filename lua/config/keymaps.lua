vim.keymap.set("n", "<leader>gc", ":Telescope git_bcommits<CR>", {
  desc = "Git Commits (Buffer)",
  noremap = true,
  silent = true,
})
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", {
  desc = "Terminal: Exit to Normal Mode",
})
