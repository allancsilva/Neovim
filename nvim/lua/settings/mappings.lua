--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Mapeamentos -----------------------------------------------------------------------------------
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--

--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Sair com 'Ctrl + q'        --------------------------------------------------------------------
--vim.cmd([[ map q :q<CR> ]]) --------------------------------------------------------------------
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
vim.cmd([[ nnoremap <C-q> :wq!<CR> ]])
vim.cmd([[ inoremap <C-q> <Esc>:wq!<CR>l ]])
vim.cmd([[ vnoremap <C-q> <Esc>:wq!<CR> ]])

--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Para Salvar com 'Ctrl + s' nos modos: Normal, Inserção e Visual -------------------------------
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
vim.cmd([[ nnoremap <C-s> :w<CR> ]])
vim.cmd([[ inoremap <C-s> <Esc>:w<CR>l ]])
vim.cmd([[ vnoremap <C-s> <Esc>:w<CR> ]])

--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Para Telescope 'Ctrl + t' no modo Normal ------------------------------------------------------
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
vim.cmd([[ nnoremap <C-t> :Telescope<CR>]])

--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Para abrir o NvimTreer use 'Ctrl + b' nos modos: Normal, Inserção e Visual --------------------
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
vim.cmd([[ nnoremap <C-b> :NvimTreeToggle<CR> ]])
vim.cmd([[ inoremap <C-b> <Esc>:NvimTreeToggle<CR>l ]])
vim.cmd([[ vnoremap <C-b> <Esc>:NvimTreeToggle<CR> ]])

--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Selecionar tudo com 'Ctrl + A' ---------------------------------------------------------------- 
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
vim.cmd([[ map <C-a> ggVG ]])

--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Desfazer tudo com 'Ctrl + Z' ------------------------------------------------------------------
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
vim.cmd([[ nnoremap <C-z> :u<CR> ]])
vim.cmd([[ inoremap <C-z> <Esc>:u<CR>l ]])
vim.cmd([[ vnoremap <C-z> <Esc>:u<CR> ]])

--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Para Circular entre dois buffers com 'Alt + c' nos modos: Normal, Inserção e Visual -----------
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
vim.cmd([[ nnoremap <A-c> :BufferLineCycleNext<CR> ]])
vim.cmd([[ inoremap <A-c> <Esc>:BufferLineCycleNext<CR>l ]])
vim.cmd([[ vnoremap <A-c> <Esc>:BufferLineCycleNext<CR> ]])

--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Para ir direto ao buffers em uma posiçao 'Alt + Posiçao' nos modos: Normal, Inserção e Visual -
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
vim.cmd([[ nnoremap <A-1> :BufferLineGoToBuffer 1<CR> ]])
vim.cmd([[ inoremap <A-1> <Esc>:BufferLineGoToBuffer 1<CR>l ]])
vim.cmd([[ vnoremap <A-1> <Esc>:BufferLineGoToBuffer 1<CR> ]])

vim.cmd([[ nnoremap <A-2> :BufferLineGoToBuffer 2<CR> ]])
vim.cmd([[ inoremap <A-2> <Esc>:BufferLineGoToBuffer 2<CR>l ]])
vim.cmd([[ vnoremap <A-2> <Esc>:BufferLineGoToBuffer 2<CR> ]])

vim.cmd([[ nnoremap <A-3> :BufferLineGoToBuffer 3<CR> ]])
vim.cmd([[ inoremap <A-3> <Esc>:BufferLineGoToBuffer 3<CR>l ]])
vim.cmd([[ vnoremap <A-3> <Esc>:BufferLineGoToBuffer 3<CR> ]])

vim.cmd([[ nnoremap <A-4> :BufferLineGoToBuffer 4<CR> ]])
vim.cmd([[ inoremap <A-4> <Esc>:BufferLineGoToBuffer 4<CR>l ]])
vim.cmd([[ vnoremap <A-4> <Esc>:BufferLineGoToBuffer 4<CR> ]])

vim.cmd([[ nnoremap <A-5> :BufferLineGoToBuffer 5<CR> ]])
vim.cmd([[ inoremap <A-5> <Esc>:BufferLineGoToBuffer 5<CR>l ]])
vim.cmd([[ vnoremap <A-5> <Esc>:BufferLineGoToBuffer 5<CR> ]])

vim.cmd([[ nnoremap <A-6> :BufferLineGoToBuffer 6<CR> ]])
vim.cmd([[ inoremap <A-6> <Esc>:BufferLineGoToBuffer 6<CR>l ]])
vim.cmd([[ vnoremap <A-6> <Esc>:BufferLineGoToBuffer 6<CR> ]])

vim.cmd([[ nnoremap <A-7> :BufferLineGoToBuffer 7<CR> ]])
vim.cmd([[ inoremap <A-7> <Esc>:BufferLineGoToBuffer 7<CR>l ]])
vim.cmd([[ vnoremap <A-7> <Esc>:BufferLineGoToBuffer 7<CR> ]])

vim.cmd([[ nnoremap <A-8> :BufferLineGoToBuffer 8<CR> ]])
vim.cmd([[ inoremap <A-8> <Esc>:BufferLineGoToBuffer 8<CR>l ]])
vim.cmd([[ vnoremap <A-8> <Esc>:BufferLineGoToBuffer 8<CR> ]])

vim.cmd([[ nnoremap <A-9> :BufferLineGoToBuffer 9<CR> ]])
vim.cmd([[ inoremap <A-9> <Esc>:BufferLineGoToBuffer 9<CR>l ]])
vim.cmd([[ vnoremap <A-9> <Esc>:BufferLineGoToBuffer 9<CR> ]])


--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Se não existir o arquivo C++ de extensão .cpp ele preenche da forma abaixo --------------------
-- altere para sua(s) linguagens preferidas                                   --------------------
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
vim.cmd([[
 	function! AutoCpp()
 	  call append(0, '#include <iostream>')
	  call append(1, '')
	  call append(2, 'int main( int argc , char **argv ){')
	  call append(3, "  std::cout << \"Olá, Mundo!\" << '\\n';")
	  call append(4, '  return 0;')
	  call append(5, '}')
	  call cursor(4, 17)
	endfunction
	autocmd BufNewFile *.cpp :call AutoCpp()
]])

--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
-- Referencias :
-- https://terminalroot.com.br/2021/11/instalando-plugins-tudo-sobre-neovim-com-lua.html
-- O basico em portugues https://guialinux.uniriotec.br/vim/
-- Super completo https://devhints.io/vim 
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--
--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--::--