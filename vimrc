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
:inoremap jk <esc>
:inoremap kj <esc>
nmap T :tabnew<CR>
nmap WW :w<CR>
nmap SO :source %<CR>

" Plugin shortcuts
nmap <F8> :TagbarToggle<CR>
nmap <F2> :NERDTreeToggle<CR>

" Toggle light/dark background
nmap BG :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" PHP Linting
nmap <Leader>PHPL :! php -l %<CR>

" Compile Latex to pdf with rubber
nmap <Leader>LA :! rubber --pdf %<CR>

" Common Makefile targets
nmap <Leader>MA :! make<CR>
nmap <Leader>MC :! make clean<CR>
nmap <Leader>MT :! make test<CR>
