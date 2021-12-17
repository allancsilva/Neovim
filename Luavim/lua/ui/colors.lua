local g = vim.g

-- tokyonight aqui
 g.tokyonight_style = 'storm'
 g.tokyonight_italic_keywords = true
 g.tokyonight_italic_functions = true
 g.tokyonight_transparent = true

 g.tokyonight_transparent_sidebar = true
 g.tokyonight_dark_sidebar = true


---- tokyonight aqui
--g.tokyonight_style = 'day'
--g.tokyonight_italic_keywords = true
--g.tokyonight_italic_functions = true
--g.tokyonight_transparent = false

g.tokyonight_colors = { 
 hint = "orange",
 error = "#ff0000"
}

vim.cmd([[
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

]])
