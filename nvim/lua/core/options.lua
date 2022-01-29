-- Abreviaçoes
local g = vim.g
local cmd = vim.cmd
local opt = vim.opt
-- Leader
g.mapleader = ','

opt.title = true
opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.fillchars = { vert = ' ' }
opt.showtabline = 2
opt.scrolloff = 5
opt.mouse = 'a'
opt.undolevels = 1000
opt.shortmess:append "sI"
opt.showmode = true
opt.hidden = true
opt.wrapscan = true
opt.backup = true
opt.writebackup = false
opt.showcmd = true
opt.showmatch = true
opt.ignorecase = true
opt.hlsearch = true
opt.smartcase = true
opt.errorbells = false
opt.joinspaces = false
opt.lazyredraw = true
opt.encoding = 'UTF-8'
opt.fileformat = 'unix'
opt.softtabstop = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.number = true
opt.colorcolumn = "+1"
opt.signcolumn = 'yes'
opt.relativenumber = true
opt.foldenable = false
opt.cursorline = true
