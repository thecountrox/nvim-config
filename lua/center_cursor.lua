-- Auto-center cursor while keeping `Shift+A` (end of line) intact
vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
  callback = function()
    -- Check if the cursor is at the last non-empty line
    local col = vim.fn.col(".")
    local line = vim.fn.line(".")
    local last_col = vim.fn.col("$")
    
    -- Only center the line if the cursor is not at the very end
    if col < last_col then
      vim.cmd("normal! zz")  -- Center the line if not at the end
    end
  end,
})
