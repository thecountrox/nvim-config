-- ~/.config/nvim/lua/plugins/auto-dark-mode.lua
return {
  "f-person/auto-dark-mode.nvim",
  opts = {
    set_dark_mode = function() vim.cmd.colorscheme "catppuccin-mocha" end,
    set_light_mode = function() vim.cmd.colorscheme "catppuccin-latte" end,
  },
}
