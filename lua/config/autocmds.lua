-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.filetype.add({
  filename = {
    ["messages"] = "log",
    ["syslog"] = "log",
  },
  pattern = {
    [".*messages%-.*"] = "log",
    [".*syslog%.%d+"] = "log",
    [".*%.log%..*"] = "log",
  },
})

-- Handle OSC 9 notifications from terminal buffers (Antigravity CLI, build tools, etc.)
vim.api.nvim_create_autocmd("TermRequest", {
  desc = "Forward OSC 9 notifications to desktop and Neovim UI",
  callback = function(ev)
    local msg = string.match(ev.data.sequence, "^\027%]9;(.*)")
    if msg and not string.match(msg, "^4;") then
      local title = "Terminal"
      local body = msg

      -- 1. If message matches 'Title: Body', split it
      local prefix, suffix = string.match(msg, "^(.-):%s*(.+)$")
      if prefix and suffix and #prefix <= 25 then
        title = prefix
        body = suffix
      -- 2. Detect Antigravity default message
      elseif string.find(msg, "Antigravity") then
        title = "Antigravity"
      end

      -- 1. Desktop notification (dunst)
      vim.fn.jobstart({
        "notify-send",
        "-a",
        "Terminal",
        "-i",
        "utilities-terminal",
        title,
        body,
      })

      -- 2. Neovim in-editor notification
      vim.schedule(function()
        vim.notify(body, vim.log.levels.INFO, {
          title = title,
        })
      end)
    end
  end,
})

