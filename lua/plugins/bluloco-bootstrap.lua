return {
  -- Register your local theme folder as a plugin source
  {
    "blueloco-light", -- Name this anything you like
    dir = vim.fn.stdpath "config" .. "/lua/blueloco-light",
    lazy = false, -- Needs to load early
  },
}
