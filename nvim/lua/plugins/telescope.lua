
  
require('telescope').setup({
    defaults = {
      find_command = {
        "rg",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
      },
      initial_mode = "insert",
      selection_strategy = "reset",
      sorting_strategy = "descending",
      layout_strategy = "horizontal",
      prompt_prefix = "   ",
      selection_caret = " ",
      layout_config = {
        width = 0.75,
        preview_cutoff = 120,
        prompt_position = "bottom",
        vertical = { mirror = false },
        horizontal = {
          mirror = false,
          preview_width = 0.5,
        },
      },

      winblend = 0,
      scroll_strategy = "cycle",
      border = {},
      borderchars = {
        "─",
        "│",
        "─",
        "│",
        "╭",
        "╮",
        "╯",
        "╰",
      },
      color_devicons = true,
      use_less = true,

	}
})


