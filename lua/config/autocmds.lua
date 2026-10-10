-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Formatting is disabled globally, but Go conventionally requires gofmt-style
-- formatting and import organization. Conform runs goimports then gofumpt.
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("go_autoformat", { clear = true }),
  pattern = "go",
  callback = function(event)
    vim.b[event.buf].autoformat = true
  end,
  desc = "Enable goimports and gofumpt on save",
})
