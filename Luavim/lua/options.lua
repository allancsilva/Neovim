--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Opções Gerais ---------------------------------------------------------------------------------
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
local cmd = vim.cmd
local opt = vim.opt


--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Cores -----------------------------------------------------------------------------------------
cmd([[ colorscheme onedark ]])
opt.termguicolors = true
opt.background  = 'dark'
--require('config.ui.colors')
--cmd('colorscheme tokyonight')


--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Definições ------------------------------------------------------------------------------------
opt.syntax  = 'on'
opt.number  = true
opt.cursorline  = true
opt.ruler  = true
opt.wrap = false
opt.mouse  = 'nv'
opt.scrolloff  = 6
opt.sidescrolloff  = 6
opt.laststatus = 2
opt.hidden = true
opt.lazyredraw  = true
opt.updatetime = 250
opt.ttyfast = true
opt.showmode  = true
opt.showcmd  = false
opt.wildmenu  = true
opt.cmdheight  = 1
opt.timeoutlen = 200
--opt.shortmess = opt.shortmess + 'c'
opt.completeopt = {'menuone', 'longest'}
opt.pumheight = 14
opt.pumblend = 20
opt.winblend = 20
opt.clipboard = {'unnamed', 'unnamedplus'}
opt.showmatch = true
opt.hlsearch = false
opt.smartcase = true
opt.ignorecase = true
opt.magic = true
opt.smartindent = true
opt.expandtab = true
opt.autoindent = true
opt.tabstop = 4
opt.softtabstop = 2
opt.shiftwidth = 4
opt.foldenable = true
opt.foldmethod = 'syntax'
opt.list = true
opt.listchars = {tab = '> ', trail = '°'}
opt.formatoptions = opt.formatoptions - 'cro'
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.undofile = true

require('utils.autocmds')


--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- automatizar o :PackerCompile ------------------------------------------------------------------
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])




