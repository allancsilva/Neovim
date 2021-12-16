--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Packer ----------------------------------------------------------------------------------------
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  --color
  --use 'folke/tokyonight.nvim'
  --use 'nvim-colorizer.lua'
  use 'navarasu/onedark.nvim'

  --ui
  --use 'glepnir/dashboard-nvim'
  use 'akinsho/bufferline.nvim'
  use 'glepnir/galaxyline.nvim'

  --tools
  use { 'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'},
    config = function() require'nvim-tree'.setup {} 
    end
}
 -- use 'kyazdani42/nvim-tree.lua'
  use 'akinsho/toggleterm.nvim'
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'},
                                                     {'kyazdani42/nvim-web-devicons'}} }

  --syntax
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'plasticboy/vim-markdown', opt = true, ft = {'markdown'} }

  --git
  --use 'lewis6991/gitsigns.nvim'

  --workspace
  use 'Pocco81/AutoSave.nvim'
  use 'terrortylor/nvim-comment'
  use 'folke/todo-comments.nvim'

  --edit
  use 'matze/vim-move'
  use 'mg979/vim-visual-multi'

  --enhance/optional
  use 'lukas-reineke/indent-blankline.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'p00f/nvim-ts-rainbow'
  --use 'karb94/neoscroll.nvim'

  --auto
  use 'windwp/nvim-autopairs'
  use { 'windwp/nvim-ts-autotag', ft = {'html'} }
  use { 'AndrewRadev/tagalong.vim', ft = {'html'} }

  --lsp
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'
  use 'williamboman/nvim-lsp-installer'
  use 'ray-x/lsp_signature.nvim'

  --snip
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  

  -- completion
  use { 'hrsh7th/nvim-cmp',
        requires = {
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-path'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-cmdline'},
          {'hrsh7th/cmp-vsnip'},
        }
      }

  --use 'hrsh7th/nvim-cmp'
  --use 'hrsh7th/cmp-nvim-lsp'
  --use 'hrsh7th/cmp-buffer'
  --use 'hrsh7th/cmp-path'
  --use 'hrsh7th/cmp-cmdline'

  --use 'ray-x/lsp_signature.nvim'
  --use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  
end
)

-- Suggested Plugins
-- lspsaga.nvim
-- trouble.nvim
-- lsp-colors.nvim
-- formatter.nvim
-- rest.nvim
-- nvim-jqx
-- auto-session
-- sidebar.nvim
-- nvim-gps
-- TrueZen
-- twilight.nvim
-- nvim-spectre
-- octo.nvim
-- sneak
-- mathup
-- register
-- vCoolor

