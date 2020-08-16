" my little config
set number

" enable pathogen
execute pathogen#infect()

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

nnoremap * *``
let mapleader = " "
hi default CoqtailChecked ctermbg=150 guibg=Grey
