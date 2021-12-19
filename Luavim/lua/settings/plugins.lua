--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Packer ----------------------------------------------------------------------------------------
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--

local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

-- Auto compile when there are changes in plugins.lua
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' 

require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)

-- Load lua path
local lua_path = function(name)
  return string.format("require'plugins.%s'", name)
end

  -- Inicio
  use {'wbthomason/packer.nvim'}
   
  -- Icons & Buffer & Linhas
  use { 'ryanoasis/vim-devicons' }
  use { 'akinsho/bufferline.nvim' }
  use { 'glepnir/galaxyline.nvim' }
    
  -- Syntax
  use { 'moll/vim-node' }
  use { 'editorconfig/editorconfig-vim' }
  use { 'chrisbra/csv.vim' }
  use { 'npxbr/glow.nvim' }
  use { 'junegunn/vim-easy-align' }
  use { 'mhartington/formatter.nvim' }
  use { 'zdharma-continuum/zinit-vim-syntax' }
  use { 'rust-lang/rust.vim' }
  use { 'plasticboy/vim-markdown', opt = true, ft = {'markdown'} }

  -- Telescope
  use { 'nvim-lua/popup.nvim' }
  use { 'nvim-lua/plenary.nvim' }
  use { 'nvim-telescope/telescope.nvim', config = lua_path"telescope" }
  use { 'nvim-telescope/telescope-fzy-native.nvim' }
  use { 'nvim-telescope/telescope-project.nvim' }
  use { 'AckslD/nvim-neoclip.lua' }

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'p00f/nvim-ts-rainbow' }
  use { 'lukas-reineke/indent-blankline.nvim' }
  use { 'JoosepAlviste/nvim-ts-context-commentstring' }
  use { 'romgrk/nvim-treesitter-context' }
  use { 'SmiteshP/nvim-gps' }

  -- Nvim-tree
  use { 
      'kyazdani42/nvim-tree.lua', 
      requires = {'kyazdani42/nvim-web-devicons'},
      config = function() require'nvim-tree'.setup {} 
    end
      }

  --Auto
  use { 'windwp/nvim-autopairs' }
  use { 'windwp/nvim-ts-autotag', ft = {'html'} }
  use { 'AndrewRadev/tagalong.vim', ft = {'html'} }
  use { 'Pocco81/AutoSave.nvim'}
 
  -- Terminal
  use { 'christoomey/vim-tmux-navigator' }
  use { 'akinsho/toggleterm.nvim' }
  use { 'numtostr/FTerm.nvim' }
 
  -- Navegaçao
  use { 'nacro90/numb.nvim' }
  use { 'dyng/ctrlsf.vim' }
  use { 'kevinhwang91/nvim-hlslens' }
  use { 'dstein64/nvim-scrollview' }
  use { 'ggandor/lightspeed.nvim' }
  use { 'fedepujol/move.nvim' }

  -- -- Tim Pope docet
  use { 'tpope/vim-sensible' }
  use { 'tpope/vim-rails' }
  use { 'tpope/vim-abolish' }
  use { 'tpope/vim-surround' }
  use { 'tpope/vim-bundler' }
  use { 'tpope/vim-capslock' }
  use { 'tpope/vim-repeat' }
  use { 'tpope/vim-endwise' }
  use { 'tpope/vim-rvm' }
  use { 'tpope/vim-dispatch' }
  use { 'tpope/vim-dadbod' }
  use { 'tpope/vim-jdaddy' }
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-commentary' }

  -- Colors
  use { 'norcalli/nvim-colorizer.lua' }
  use { 'folke/tokyonight.nvim' } 
  use { 'lpinilla/vim-codepainter' }
  use { 'folke/todo-comments.nvim' }
 
  --Snip
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  use 'L3MON4D3/LuaSnip'
  
end
)


