-- Sair com 'q' , se usar gravação de macros altere para <C-q> → Ctrl + q
--vim.cmd([[ map q :q<CR> ]])

-- Para Salvar com 'Ctrl + S' nos modos: Normal, Inserção e Visual
-- Precisa adicionar a linha: stty -ixon , ao seu ~/.bashrc
vim.cmd([[ nnoremap <C-s> :w<CR> ]])
vim.cmd([[ inoremap <C-s> <Esc>:w<CR>l ]])
vim.cmd([[ vnoremap <C-s> <Esc>:w<CR> ]])

vim.cmd([[ nnoremap <C-t> :Telescope<CR>]])
--vim.cmd([[ inoremap <C-a> <Esc>:NERDTreeToggle<CR>l ]])
--vim.cmd([[ vnoremap <C-a> <Esc>:NERDTreeToggle<CR> ]])


vim.cmd([[ nnoremap <C-b> :NvimTreeToggle<CR> ]])
vim.cmd([[ inoremap <C-b> <Esc>:NvimTreeToggle<CR>l ]])
vim.cmd([[ vnoremap <C-b> <Esc>:NvimTreeToggle<CR> ]])



--vim.cmd([[ nnoremap <C-Tab> :w<CR> ]])
--vim.cmd([[ inoremap <C-Tab> <Esc>:w<CR>l ]])
--vim.cmd([[ vnoremap <C-Tab> <Esc>:w<CR> ]])


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


-- " These commands will navigate through buffers in order regardless of which mode you are using
-- " e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
-- nnoremap <silent>[b :BufferLineGoToBuffer 1<CR>


-- nnoremap <silent>b] :BufferLineCyclePrev<CR>

-- " These commands will move the current buffer backwards or forwards in the bufferline
-- nnoremap <silent><mymap> :BufferLineMoveNext<CR>
-- nnoremap <silent><mymap> :BufferLineMovePrev<CR>

-- " These commands will sort buffers by directory, language, or a custom criteria
-- nnoremap <silent>be :BufferLineSortByExtension<CR>
-- nnoremap <silent>bd :BufferLineSortByDirectory<CR>
-- nnoremap <silent><mymap> :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>








-- Selecionar tudo com 'Ctrl + A'
vim.cmd([[ map <C-a> ggVG ]])

-- Desfazer tudo com 'Ctrl + Z'
vim.cmd([[ nnoremap <C-z> :u<CR> ]])
vim.cmd([[ inoremap <C-z> <Esc>:u<CR>l ]])
vim.cmd([[ vnoremap <C-z> <Esc>:u<CR> ]])


-- BASH - Auto preenche arquivos .sh que não existirem com a SheBang
--vim.cmd([[ autocmd BufNewFile *.sh :call append(0, '#!/usr/bin/env bash') ]])

-- Se não existir o arquivo C++ de extensão .cpp ele preenche da forma abaixo
-- altere para sua(s) linguagens preferidas
--vim.cmd([[
-- 	function! AutoCpp()
-- 	  call append(0, '#include <iostream>')
-- 	  call append(1, '')
-- 	  call append(2, 'int main( int argc , char **argv ){')
-- 	  call append(3, "  std::cout << \"Olá, Mundo!\" << '\\n';")
-- 	  call append(4, '  return 0;')
-- 	  call append(5, '}')
-- 	  call cursor(4, 17)
-- 	endfunction
-- 	autocmd BufNewFile *.cpp :call AutoCpp()
-- ]])
