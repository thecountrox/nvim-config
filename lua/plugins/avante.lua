return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- Never set this value to "*"! Never!
  opts = {
    -- add any opts here
    -- for example
    provider = "gemini",
    cursor_applying_provider = "groq",
    behaviour = {
      enable_cursor_planning_mode = true,
    },
    ollama = {
      endpoint = "https://api.thecount.eu.org",
      model = "qwen2.5-coder:1.5b", -- your desired model (or use gpt-4o, etc.)
      timeout = 4800000, -- Timeout in milliseconds, increase this for reasoning models
      temperature = 0,
      max_tokens = 40960, -- Increase this to include reasoning tokens (for reasoning models)
    },
    gemini = {
      api_key_name = "AIzaSyBqajTbTp5GURPTq7lcGwbU7WccTn7qaxw", -- Environment variable for your Gemini API Key
      -- The endpoint for Gemini API. Google's standard API endpoint is:
      endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
      -- Choose your Gemini model. Popular ones include:
      -- "gemini-pro" (for text-only)
      -- "gemini-pro-vision" (for multimodal, if Avante supports image input for Gemini)
      -- "gemini-1.5-pro" (for larger context, newer generation)
      -- "gemini-1.5-flash" (for faster responses)
      model = "gemini-2.0-flash", -- Example: Use Gemini 1.5 Pro
      temperature = 0.5, -- Adjust creativity (0.0 to 1.0)
      max_tokens = 8192, -- Adjust based on model context and desired output length
      timeout = 60000, -- 60 seconds, or adjust as needed
      -- additional_query_params = { -- Optional: for very specific API needs
      --   key = os.getenv("GEMINI_API_KEY"), -- Sometimes necessary for direct API calls, but often handled by avante
      -- },
    },
    vendors = {
      groq = {
        __inherited_from = "openai",
        api_key_name = "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",
        endpoint = "https://api.groq.com/openai/v1/",
        model = "llama-4-scout-17b-16e-instruct",
        max_completion_tokens = 32768,
      },
    },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "echasnovski/mini.pick", -- for file_selector provider mini.pick
    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
