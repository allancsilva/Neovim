--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Packer ----------------------------------------------------------------------------------------
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Barrinhas
  use 'romgrk/barbar.nvim' 
  use 'tamton-aquib/staline.nvim' 
    
  -- Syntax
  use 'plasticboy/vim-markdown'
  use 'numirias/semshi'
  
  -- Telescope
  use 'nvim-lua/popup.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'AckslD/nvim-neoclip.lua'
  use 'sharkdp/fd'
  --use { 'nvim-telescope/telescope-project.nvim' }
  
  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'p00f/nvim-ts-rainbow' 
  use 'lukas-reineke/indent-blankline.nvim' 
  use 'JoosepAlviste/nvim-ts-context-commentstring' 
  use 'romgrk/nvim-treesitter-context'
  use 'SmiteshP/nvim-gps'

  -- Nvim-tree
  use 'ryanoasis/vim-devicons' 
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons',},
        config = function() require'nvim-tree'.setup {} end
      }
  --Auto
  use 'Pocco81/AutoSave.nvim'
  use 'windwp/nvim-autopairs'
 
  -- Terminal
  use 'christoomey/vim-tmux-navigator' 
  use 'akinsho/toggleterm.nvim' 
  use 'numtostr/FTerm.nvim'
 
  -- Navegaçao
  
  use 'dyng/ctrlsf.vim' 
  use 'kevinhwang91/nvim-hlslens' 
  use 'ggandor/lightspeed.nvim' 
  use 'fedepujol/move.nvim' 
  use 'dstein64/nvim-scrollview' 

  -- -- -- Tim Pope docet
  -- use { 'tpope/vim-sensible' }
  -- use { 'tpope/vim-rails' }
  -- use { 'tpope/vim-abolish' }
  -- use { 'tpope/vim-surround' }
  -- use { 'tpope/vim-bundler' }
  -- use { 'tpope/vim-capslock' }
  -- use { 'tpope/vim-repeat' }
  -- use { 'tpope/vim-endwise' }
  -- use { 'tpope/vim-rvm' }
  -- use { 'tpope/vim-dispatch' }
  -- use { 'tpope/vim-dadbod' }
  -- use { 'tpope/vim-jdaddy' }
  -- use { 'tpope/vim-fugitive' }
  -- use { 'tpope/vim-commentary' }

  -- Colors
  --use { 'nvim-colorizer.lua' } 
  use 'navarasu/onedark.nvim' 
  use 'folke/todo-comments.nvim' 
  use 'norcalli/nvim-colorizer.lua'
  --Snip
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  use 'L3MON4D3/LuaSnip'
  
end)


