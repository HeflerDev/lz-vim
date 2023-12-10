-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("i", "kk", "<Esc>")

-- Jukit Keymaps
map("n", "<leader><space>", ":call jukit#send#section(0)<cr>")
map("n", "<F5>", ":call jukit#send#line()<cr>")
map("v", "<cr>", ":<C-U>call jukit#send#selection()<cr>")
map("n", "<leader>all", ":call jukit#send#all()<cr>")
map("n", "<leader>cc", ":call jukit#send#until_current_section()<cr>")
map("n", "<leader>cb", ":call jukit#cells#create_below(0)<cr>")
