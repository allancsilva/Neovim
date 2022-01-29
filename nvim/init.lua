--------------------------
---- Init dos bons !! ---- 
--------------------------
local core_modules = {
   "core.options",
   "core.autocmds",
   "core.mappings",
   "core.lspConfig",
   "core.nvimCompe",
   "plugins",
  
}


for _, module in ipairs(core_modules) do
   local ok, err = pcall(require, module)
   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
end


-- "core.lspConfig",
-- "core.nvimCompe",