
-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==


  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "    ██╗   ██╗ ██████╗ ██╗██████╗ ",
        "    ██║   ██║██╔═══██╗██║██╔══██╗ ",
        "    ██║   ██║██║   ██║██║██║  ██║ ",
        "    ╚██╗ ██╔╝██║   ██║██║██║  ██║ ",
        "     ╚████╔╝ ╚██████╔╝██║██████╔╝  ",
        "      ╚═══╝   ╚═════╝ ╚═╝╚═════╝  ",
                                     " ",
        "  ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
        "  ████╗  ██║██║   ██║██║████╗ ████║",
        "  ██╔██╗ ██║██║   ██║██║██╔████╔██║",
        "  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
        "  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
        "  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
      }
      return opts
    end,
  },

}
