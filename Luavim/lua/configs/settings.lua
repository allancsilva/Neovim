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
-- Cores ------------------------------------------------------------------------------------
cmd([[ set bg=dark ]])
cmd([[ set termguicolors ]])
cmd([[ colorscheme onedark ]])
cmd([[ syntax on ]])
cmd([[ set encoding=utf8 ]])
cmd([[ set nu! ]])
cmd([[ set mouse=a ]])
cmd([[ set wildmenu ]])
cmd([[ set confirm ]])
cmd([[ set incsearch ]])
cmd([[ set title ]])
cmd([[ set t_Co=256 ]])
cmd([[ set guicursor= ]])
cmd([[ set expandtab ]])
cmd([[ set softtabstop=4 ]])
cmd([[ set shiftwidth=4 ]])
cmd([[ set expandtab ]])
cmd([[ set smarttab ]])
cmd([[ set smartindent ]])
cmd([[ set autoindent ]])
cmd([[ set hidden ]])
cmd([[ set ignorecase ]])
cmd([[ set smartcase ]])
cmd([[ set scrolloff=8 ]])
cmd([[ set signcolumn=yes ]])
cmd([[ set cmdheight=1 ]])
cmd([[ set updatetime=100 ]])
cmd([[ set magic ]])
cmd([[ set showmode ]])
cmd([[ set ttyfast ]])
cmd([[ set nocompatible ]])
cmd([[ let extension = expand('%:e') ]])
cmd([[ autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0 ]])
cmd([[ autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2 ]])
cmd([[ au BufWritePre * :%s/\s\+$//e ]])
cmd ([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
-- cmd([[
--   let g:onedark_style = 'darker'
--   colorscheme onedark
-- ]])
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Facilidades ------------------------------------------------------------------------------------

--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Automatizar o :PackerCompile ------------------------------------------------------------------


--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
