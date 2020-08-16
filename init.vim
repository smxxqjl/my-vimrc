" my little config
set number

" Uncomment the following to have Vim jump to the last position when                                                       
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

set background=light
set cino=N-s

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-grepper'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'whonore/Coqtail'
Plug 'tpope/vim-repeat'
Plug 'flazz/vim-colorschemes'
call plug#end()

set expandtab

" Make * key not jump to next
nnoremap * *``

let mapleader = " "

" Coq settings
hi default CoqtailChecked ctermbg=150 guibg=Grey
