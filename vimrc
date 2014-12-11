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
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4
set matchtime=3
set mouse=a
set clipboard=unnamedplus

" Keyboard mappings
:inoremap jk <esc>
:inoremap kj <esc>
nmap <F8> :TagbarToggle<CR>
nmap <F2> :NERDTreeToggle<CR>
nmap BG :let &background = ( &background == "dark"? "light" : "dark" )<CR>
