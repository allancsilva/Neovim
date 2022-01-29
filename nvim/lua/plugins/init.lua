vim.cmd "packadd packer.nvim"

local present, packer = pcall(require, "packer")

if not present then
   local packer_path = vim.fn.stdpath "data" .. "/site/pack/packer/opt/packer.nvim"

   print "Começou a putaria .."
   -- remove the dir before cloning
   vim.fn.delete(packer_path, "rf")
   vim.fn.system {
      "git",
      "clone",
      "https://github.com/wbthomason/packer.nvim",
      "--depth",
      "20",
      packer_path,
   }

   vim.cmd "packadd packer.nvim"
   present, packer = pcall(require, "packer")

   if present then
      print "Tudo certo ate aqui !"
   else
      error("Deu merda !\nPacker path: " .. packer_path .. "\n" .. packer)
   end
end



local use = packer.use
return packer.startup(function()
   use 'wbthomason/packer.nvim'


use {
     "yunlingz/equinusocio-material.vim",  
      config = function()
        require "plugins.colorsTheme"
      end,
    }

use {
     "sidebar-nvim/sidebar.nvim",     
      config = function()
        require "plugins.sideBar"
      end,
  }


use {
     "nvim-lualine/lualine.nvim",     
      config = function()
        require "plugins.luaLine"
      end,
  }



-- Syntax
use 'ryanoasis/vim-devicons'
use 'kyazdani42/nvim-web-devicons'
use 'nvim-lua/plenary.nvim'
use 'lukas-reineke/indent-blankline.nvim'
use 'romgrk/nvim-treesitter-context'  
use {"nvim-treesitter/nvim-treesitter",
     config = function()
       require "plugins.treeSitter"
     end
   } 


use {
      "SmiteshP/nvim-gps",
      requires = "nvim-treesitter/nvim-treesitter"
   }
use 'numToStr/Comment.nvim'
use { 
   "p00f/nvim-ts-rainbow", 
   config = function()
     require "plugins.rainbow" 
   end,
 }

-- Nvim-tree
use {
   'kyazdani42/nvim-tree.lua', 
    config = function() 
      require"plugins.nTree" 
    end
   }


  -- use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/vim-vsnip'
  use 'folke/lsp-colors.nvim'
  use 'ray-x/lsp_signature.nvim'
  use 'onsails/lspkind-nvim'
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'williamboman/nvim-lsp-installer'
  use 'glepnir/lspsaga.nvim'
  use 'hrsh7th/nvim-compe'
  use 'mhinz/vim-signify'
  use 'github/copilot.vim'



end)








