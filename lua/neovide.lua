if vim.g.neovide then
  vim.o.guifont = "Atkinson Hyperlegible Mono:h13"
  vim.g.neovide_opacity = 0
  vim.g.neovide_normal_opacity = 0.4

  require("notify").setup {
    background_colour = "#000000",
  }
end
