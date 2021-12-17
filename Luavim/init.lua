-- _____       _         ___     _______       _         ___                          _______    ______  
-- _____       _      ██╗     ██╗   ██╗ █████╗     ██╗   ██╗██╗███╗   ███╗_   __    ____  ____________             
-- _______       _    ██║     ██║   ██║██╔══██╗    ██║   ██║██║████╗ ████║ 
-- __       _         ██║     ██║   ██║███████║    ██║   ██║██║██╔████╔██║ __       _    __       _                         
-- _       _          ██║     ██║   ██║██╔══██║    ╚██╗ ██╔╝██║██║╚██╔╝██║___                           
-- ___________________███████╗╚██████╔╝██║  ██║     ╚████╔╝ ██║██║ ╚═╝ ██║_____________ |  2021  |  ____                          
-- _____       _      ╚══════╝ ╚═════╝ ╚═╝  ╚═╝      ╚═══╝  ╚═╝╚═╝     ╚═╝                           
--  _______                                                               _____________________                  
--  _______ __       _           __       _   @LLAN   NEOVIM                     
-- _____       _                                   LUA      PROJETO NEOVIM    ____          ________ ___                   
--                                            2021   
-- _____       _         ___    _______       _         ___    _______       _         ___


-- Modulos
-- Speed Neovim
--require('utils.disabled')


-- Packer
require('settings.plugins')
require('settings.options')
require('settings.core')
-- Keymap
require('settings.mappings')
-- LSP Config
require('lsp')




-- Referencias 
-- https://github.com/AyeSpacey/Nvimfy
-- https://github.com/crivotz/nv-ide
