--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Opções Gerais ---------------------------------------------------------------------------------
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Neovim API aliases
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- local map = vim.api.nvim_set_keymap  -- set global keymap 
local cmd = vim.cmd     				-- execute Vim commands
local exec = vim.api.nvim_exec 	-- execute Vimscript
local fn = vim.fn       				-- call Vim functions
local g = vim.g         				-- global variables
local opt = vim.opt         		-- global/buffer/windows-scoped options

g.mapleader = ','               -- change leader to a comma
opt.mouse = 'a'                 -- enable mouse support
opt.clipboard = 'unnamedplus'   -- copy/paste to system clipboard
opt.swapfile = false            -- don't use swapfile


--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
<<<<<<< Updated upstream
-- Cores -----------------------------------------------------------------------------------------
--cmd([[ colorscheme onedark ]])
--require('ui.colors')
--cmd([[ colorscheme tokyonight ]])
--cmd('colorscheme tokyonight')
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- remove line lenght marker for selected filetypes
cmd [[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]]
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- 2 spaces for selected filetypes
cmd [[
  autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2
]]
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- remove whitespace on save
cmd [[au BufWritePre * :%s/\s\+$//e]]
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- automatizar o :PackerCompile ------------------------------------------------------------------
cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
--cmd([[ set wrap ]])
--cmd([[ set linebreak ]])
--cmd([[ set colorcolumn=30 ]])


--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
=======
>>>>>>> Stashed changes
-- Definições ------------------------------------------------------------------------------------
opt.termguicolors = true
opt.background  = 'dark'
opt.textwidth=40
opt.syntax  = 'on'
opt.number  = true
opt.cursorline  = true
opt.ruler  = true
opt.wrap = false
opt.mouse  = 'nv'
opt.scrolloff  = 6
opt.sidescrolloff  = 6
opt.laststatus = 2
opt.updatetime = 100
opt.ttyfast = true
opt.showmode  = true
opt.showcmd  = false
opt.wildmenu  = true
opt.cmdheight  = 1
opt.timeoutlen = 200
opt.showmatch = true
opt.hlsearch = false
opt.smartcase = true
opt.ignorecase = true
opt.magic = true
opt.linebreak = true
opt.smartindent = true
opt.expandtab = true
opt.autoindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.foldenable = true
opt.foldmethod = 'syntax'
opt.list = true
opt.listchars = {tab = '> ', trail = '°'}
opt.formatoptions = opt.formatoptions - 'cro'
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.undofile = true
opt.hidden = true         
opt.history = 100         
opt.lazyredraw = true     
opt.synmaxcol = 240       
-- disable nvim intro
opt.shortmess:append "sI"



--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Cores -----------------------------------------------------------------------------------------
--cmd([[ colorscheme onedark ]])
--require('ui.colors')
--cmd([[ colorscheme tokyonight ]])
--cmd('colorscheme tokyonight')
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- remove line lenght marker for selected filetypes
cmd [[
  autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0
]]
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- 2 spaces for selected filetypes
cmd [[
  autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2
]]
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- remove whitespace on save
cmd [[
  au BufWritePre * :%s/\s\+$//e
]]
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- automatizar o :PackerCompile ------------------------------------------------------------------
cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]

--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Startup ---------------------------------------------------------------------------------------
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- disable builtins plugins
local disabled_built_ins = {
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "gzip",
  "zip",
  "zipPlugin",
  "tar",
  "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "logipat",
  "rrhelper",
  "spellfile_plugin",
  "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
  g["loaded_" .. plugin] = 1
end

