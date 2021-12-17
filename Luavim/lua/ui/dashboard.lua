local g = vim.g
local cmd = vim.cmd

local nvimfy_header = {
    '                                                             ',
    '                                                             ',
    '       ██╗     ██╗   ██╗ █████╗     ██╗   ██╗██╗███╗   ███╗  ',   
    '       ██║     ██║   ██║██╔══██╗    ██║   ██║██║████╗ ████║  ',
    '       ██║     ██║   ██║███████║    ██║   ██║██║██╔████╔██║  ',                     
    '       ██║     ██║   ██║██╔══██║    ╚██╗ ██╔╝██║██║╚██╔╝██║  ',                      
    '       ███████╗╚██████╔╝██║  ██║     ╚████╔╝ ██║██║ ╚═╝ ██║  ',                   
    '       ╚══════╝ ╚═════╝ ╚═╝  ╚═╝      ╚═══╝  ╚═╝╚═╝     ╚═╝  ',                 
    '                                                            ',
    '                            @LLAN   NEOVIM                  ',
    '                                 LUA      PROJETO NEOVIM    ',             
    '                                                2021        ', 
  }

local nvimfy_footer = {
  '[ Trabalha pivete !]'
}

g.dashboard_custom_header = nvimfy_header
g.dashboard_custom_footer = nil

g.dashboard_custom_section = {
  a = { description = { " New                --- -" }, command = "DashboardNewFile"},
  b = { description = { " Files              --- -" }, command = "Telescope find_files"},
  c = { description = { " Recents            --- -" }, command = "Telescope oldfiles"},
  e = { description = { " Theme              --- -" }, command = "Telescope colorscheme"},
  f = { description = { " Config             --- -" }, command = "e ~/.config/nvim/lua/options.lua"},
}

g.dashboard_default_executive ='telescope'
--g.dashboard_disable_statusline = 1

cmd([[
autocmd FileType dashboard set cursorline
autocmd FileType dashboard hi Cursor guifg = #F8F8F8 guibg = #1f2335
]])
