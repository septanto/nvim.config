-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
  -- Neovide Config-
  -- vim.g.neovide_opacity = 0.95
  -- vim.g.neovide_normal_opacity = 0.95
  vim.g.neovide_hide_mouse_when_typing = true

  vim.g.neovide_cursor_animation_length = 0.110
  vim.g.neovide_cursor_short_animation_length = 0.03
  vim.g.neovide_cursor_trail_size = 0.8
end
