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
cmd([[ set termguicolors ]])

-- Tema Onedark
-- cmd([[ colorscheme onedark ]]) cmd([[ set bg=dark ]])
-- Tema Oceanic
-- cmd([[ colorscheme oceanic-primal ]]) cmd([[ set background=dark ]])
-- Toast Theme
-- cmd([[ colorscheme toast ]]) cmd([[ set background=light ]])
-- GruvBox Theme
-- cmd([[ colorscheme gruvbox ]]) cmd([[ set background=dark ]])




-- -- Temas Zenbones
-- cmd([[ colorscheme zenbones ]]) cmd([[ set background=dark ]])
-- cmd([[ colorscheme zenwritten ]]) cmd([[ set background=dark ]])
-- cmd([[ colorscheme neobones ]]) cmd([[ set background=dark ]])
-- cmd([[ colorscheme rosebones ]]) cmd([[ set background=dark ]])
-- cmd([[ colorscheme nordbones ]]) cmd([[ set background=dark ]])
-- cmd([[ colorscheme tokyobones ]]) cmd([[ set background=dark ]])
-- cmd([[ colorscheme duckbones ]]) cmd([[ set background=dark ]])
-- cmd([[ colorscheme zenburned ]]) cmd([[ set background=dark ]])
-- cmd([[ colorscheme seoulbones ]]) cmd([[ set background=light ]])
-- cmd([[ colorscheme forestbones ]]) cmd([[ set background=light ]])


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


-- cmd([[ colorscheme spaceduck ]])

-- cmd([[

--   if exists('+termguicolors')
--     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
--     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
--   endif

-- colorscheme spaceduck
-- set laststatus=2

-- if !has('gui_running')
--   set t_Co=256
-- endif

-- let g:lightline = {
--   \ 'colorscheme': 'spaceduck',
--   \ }

-- ]])
-- cmd([[
-- let g:spaceline_seperate_style = 'curve'
-- let g:spaceline_colorscheme = 'space'
-- let g:spaceline_scroll_chars = [
--   \  ' ', '▁', '▂', '▃', '▄', '▅', '▆', '▇', '█'
--   \  ]
-- ]])
-- cmd([[
--   let g:onedark_style = 'darker'
--   colorscheme onedark
-- ]])
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Facilidades ------------------------------------------------------------------------------------

--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Automatizar o :PackerCompile ------------------------------------------------------------------


--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
