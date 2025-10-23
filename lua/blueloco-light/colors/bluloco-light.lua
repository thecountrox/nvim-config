-- Sets the overall background to light, matching the theme's nature
vim.o.background = "light"

-- Define a local palette from your Bluloco Light VS Code theme
local colors = {
  bg = "#f9f9f9",
  fg = "#383a42",
  blue_keyword = "#0098dd",
  green_func = "#23974a",
  orange_brown = "#a05a48", -- Property
  yellow_str = "#c5a332", -- String
  red_error = "#d52753", -- Class/Error
  comment = "#a0a1a7",
  purple_const = "#823ff1", -- Constant
  pink_number = "#ce33c0",
  light_blue = "#275fe4", -- Markup Tag
}

-- Function to set custom highlight groups
local function set_highlights(palette)
  -- CORRECTED: The helper function 'h' now takes the group name and the
  -- 'opts' table, which contains 'fg', 'bg', 'italic', 'bold', etc.
  local h = function(group, opts) vim.api.nvim_set_hl(0, group, opts) end

  -- === CORE HIGHLIGHTS ===
  h("Normal", { fg = palette.fg, bg = palette.bg })
  h("Comment", { fg = palette.comment, italic = true }) -- Corrected: uses { italic = true }
  h("ErrorMsg", { fg = palette.red_error, bg = palette.bg, bold = true })
  h("WarningMsg", { fg = palette.yellow_str, bg = palette.bg, bold = true })
  h("Visual", { bg = "#e5e5e5" })
  h("IncSearch", { fg = palette.bg, bg = palette.yellow_str })
  h("LineNr", { fg = palette.comment })

  -- === SYNTAX HIGHLIGHTS ===
  h("Statement", { fg = palette.blue_keyword, bold = true })
  h("Keyword", { fg = palette.blue_keyword })
  h("Function", { fg = palette.green_func })
  h("String", { fg = palette.yellow_str })
  h("Number", { fg = palette.pink_number })
  h("Constant", { fg = palette.purple_const })
  h("Identifier", { fg = palette.orange_brown })

  -- === TREESITTER HIGHLIGHTS ===
  h("@keyword", { fg = palette.blue_keyword })
  h("@function", { fg = palette.green_func })
  h("@type", { fg = palette.red_error })
  h("@variable", { fg = palette.orange_brown })
  h("@string", { fg = palette.yellow_str })
  h("@number", { fg = palette.pink_number })
  h("@constant", { fg = palette.purple_const })

  -- === PLUGIN/UI HIGHLIGHTS (AstroNvim Components) ===
  h("TelescopePromptPrefix", { fg = palette.blue_keyword, bold = true })
  h("LspDiagnosticsError", { fg = palette.red_error })
  h("LspDiagnosticsWarning", { fg = palette.yellow_str })
end

-- Execute the highlight setting function
set_highlights(colors)
