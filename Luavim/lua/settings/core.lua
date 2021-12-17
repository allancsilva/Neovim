-- UI
require('ui.bufferline')
--require('ui.dashboard')
require('ui.statusline')
--require('ui.startify')

-- Tools
require('tools.telescope')
require('tools.tree')
--require('tools.gitsign')
require('tools.treesitter')
require('tools.todo')
--require('tools.menu')


-- Misc
require('colorizer').setup()
require('nvim_comment').setup()

require('nvim-autopairs').setup({
  ignored_next_char = "[%w%.]",
  enable_check_bracket_line = false
})

require('autosave').setup({
  enabled = true,
  execution_message = "Saved at " .. vim.fn.strftime("%H:%M:%S"),
  events = {"InsertLeave", "TextChanged"},
  conditions = {
  clean_command_line_interval = 0,
  debounce_delay = 135
  }
})

require("indent_blankline").setup {
  indentLine_enabled = 1,
  char = "|",
  filetype_exclude = { "help", "terminal", "dashboard", "packer", "lspinfo", "TelescopePrompt", "TelescopeResults" },
  buftype_exclude = { "terminal" },
  space_char_blankline = " ",
  show_current_context = true,
}

local g = vim.g

g.indent_blankline_enabled = 0
g.move_key_modifier = 'C'
g.cursurline_timeout = 100
