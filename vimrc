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
set cc=100

" Keyboard mappings
:inoremap jk <esc>
:inoremap kj <esc>
nmap T :tabnew<CR>
nmap WW :w<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F2> :NERDTreeToggle<CR>
