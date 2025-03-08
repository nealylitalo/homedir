syntax on
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
"Plug 'jlanzarotta/bufexplorer'
Plug 'ap/vim-buftabline'
call plug#end()

let g:buftabline_numbers=2
let g:buftabline_indicators=1
let g:buftabline_separators=1

"autocmd VimtexCompile

set linebreak

nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

set notagbsearch
