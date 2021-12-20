-- Para nvim-web-devicons
require'nvim-web-devicons'.get_icons()


-- PARA O COLORIZER
require'colorizer'.setup()


require('nvim-autopairs').setup({
  enable_check_bracket_line = false
})


-- PARA AS LINHAS DE INDENTAÇÃO

vim.opt.listchars:append("space:⋅")
--vim.opt.listchars:append("eol:↴")
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.cmd([[
  hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=NONE guifg=#FFFFFF
  let g:indentLine_fileTypeExclude = ['dashboard']
]])


require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}



-- Para Barra de status
--require("lfs")

require('staline').setup{
  sections = {
    left = {
      ' ', 'right_sep_double', '-mode', 'left_sep_double', ' ',
      'right_sep', '-file_name', 'left_sep', ' ',
      'right_sep_double', branch, 'left_sep_double', ' ',
    },
    mid  = {'-lsp'},
    right= {
      'right_sep', '-cool_symbol', 'left_sep', ' ',
      'right_sep', '- ', this_lsp, '- ', 'left_sep',
      'right_sep_double', '-line_column', 'left_sep_double', ' ',
    }
  },

  defaults={
    fg = "#f7f7f7",
    cool_symbol = "  ",
    left_separator = "",
    right_separator = "",
    line_column = "%l:%c [%L]",
    true_colors = false,
    line_column = "[%l:%c] 並%p%% ",
    stab_start  = "",
    stab_end    = ""
    --font_active = "bold"
  },
  mode_colors = {
    n  = "#921F81",
    i  = "#006A6B",
    ic = "#E4BF7B",
    c  = "#2a6099",
    v  = "#D71B39"
  }
}

-- Buffer
vim.opt.termguicolors = true
require('bufferline').setup {

  options = {

    middle_mouse_command = nil,

    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',

    separator_style = "slant",

    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,

    max_name_length = 14,
    tab_size = 14,
    sort_by = 'tabs',

    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
      }
    },

    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "("..count..")"
    end,
  },

  custom_areas = {
  right = function()
    local result = {}
    local error = vim.lsp.diagnostic.get_count(0, [[Error]])
    local warning = vim.lsp.diagnostic.get_count(0, [[Warning]])
    local info = vim.lsp.diagnostic.get_count(0, [[Information]])
    local hint = vim.lsp.diagnostic.get_count(0, [[Hint]])

    if error ~= 0 then
      table.insert(result, {text = "  " .. error, guifg = "#EC5241"})
    end

    if warning ~= 0 then
      table.insert(result, {text = "  " .. warning, guifg = "#EFB839"})
    end

    if hint ~= 0 then
      table.insert(result, {text = "  " .. hint, guifg = "#A3BA5E"})
    end

    if info ~= 0 then
      table.insert(result, {text = "  " .. info, guifg = "#7EA9A7"})
    end
    return result
  end,
}

}