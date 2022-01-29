require('nvim-treesitter').setup {

  ensure_installed = {
    'lua',
    'vim',
    'c',
    'cpp',
    'python',
    'jsdoc',
    'javascript',
    'typescript',
    'json',
    'vue',
    'html',
    'css',
    'php',
    'kotlin',
    'http'
  },
  
  indent = { 
    enable = true 
  },

  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },

  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },

  autotag = {
    enable = true,
    filetypes = {
      "html",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "svelte",
      "vue",
      "markdown",
    },
 


}
}
