" In case this will be a system-wide vimrc
set nocompatible

" Load pathogen and plugins
execute pathogen#infect()
filetype plugin indent on

" Set colors
syntax on
hi Constant cterm=bold ctermfg=blue guifg=#0000FF

" Set preferences
set number
set incsearch
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4
set matchtime=3
set cc=100
set mouse=a
set clipboard=unnamedplus

" Keyboard mappings
let mapleader=','
:inoremap jk <esc>
:inoremap kj <esc>
nmap T :tabnew<CR>
nmap WW :w<CR>
nmap SO :source %<CR>
nmap <c-n> :tabn<cr>
nmap <c-p> :tabp<cr>

" Plugin shortcuts
nmap <F8> :TagbarToggle<CR>
nmap <F2> :NERDTreeToggle<CR>

" Toggle light/dark background
nmap BG :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" Compile Latex to pdf with rubber
nmap <Leader>la :! rubber --pdf %<CR>

" Common Makefile targets
nmap <Leader>ma :! make<CR>
nmap <Leader>mc :! make clean<CR>
nmap <Leader>mt :! make test<CR>

" Syntastic Preferences
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" C++ Dev
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_cpp_include_dirs = ['/usr/include/qt4','/usr/include/qt4/Qt','/usr/include/qt4/QtCore']
